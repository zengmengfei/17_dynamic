<?php
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Cell\Coordinate;
use think\exception\ValidateException;


use think\facade\Filesystem;
class Excel
{

    /*
     * 把导出为excel到浏览器并下载
     * $title:标题
     * $headArr: 表头
     * $data: 数据
     * $fileName:文件名
     * */
    function excel_export($title = "", $headArr = [], $data = [], $fileName = '')
    {
        $fileName .= "_" . date("Y_m_d", time()) . ".xls";
        $spreadsheet = new Spreadsheet();
        $objPHPExcel = $spreadsheet->getActiveSheet();
        $objPHPExcel->setTitle($title);
        $objPHPExcel->setCellValueByColumnAndRow(1, 1, $title);
        // 设置表头
        $key = ord("A");
        foreach ($headArr as $v) {
            $colum = chr($key);
            $objPHPExcel->setCellValue($colum . '1', $v);
            $key += 1;
        }
        $column = 2;
        foreach ($data as $key => $rows) { // 行写入
            $span = ord("A");
            foreach ($rows as $keyName => $value) { // 列写入
                $objPHPExcel->setCellValue(chr($span) . $column, $value);
                $span++;
            }
            $column++;
        }
        header('Content-Type: application/vnd.ms-excel');
        header('Content-Disposition: attachment;filename="' . $fileName . '.xlsx"');
        header('Cache-Control: max-age=0');
        $writer = new Xlsx($spreadsheet);
        $writer->save(UPLOAD_TEMP_PATH . "/" . $fileName);
        $filePath = get_image_url(str_replace(ATTACHMENT_PATH, "", UPLOAD_TEMP_PATH . "/" . $fileName));
        return $filePath;

    }

    /**
     * @param $filename 文件
     * @param $path 文件路径
     * @return array|void 返回值
     * @throws \PhpOffice\PhpSpreadsheet\Exception
     * @throws \PhpOffice\PhpSpreadsheet\Reader\Exception
     */
    public function import_excel($filename = "",$path="import")
    {
        $file[] = $filename;
//        try {
            // 验证文件大小，名称等是否正确
            validate(['file' => 'filesize:51200|fileExt:xls,xlsx'])
                ->check($file);
            // 将文件保存到本地
            $savename = Filesystem::putFile($path, $file[0]);
            // 截取后缀
            $fileExtendName = substr(strrchr($savename, '.'), 1);
            // 有Xls和Xlsx格式两种

            if ($fileExtendName == 'xlsx') {
                $objReader = IOFactory::createReader('Xlsx');
            } else {
                $objReader = IOFactory::createReader('Xls');
            }
            // 设置文件为只读
            $objReader->setReadDataOnly(TRUE);
            // 读取文件，tp6默认上传的文件，在runtime的相应目录下，可根据实际情况自己更改
            $objPHPExcel = $objReader->load(public_path() .'uploads/'. $savename);
            //excel中的第一张sheet
            $sheet = $objPHPExcel->getSheet(0);
            // 取得总行数
            $highestRow = $sheet->getHighestRow();
            // 取得总列数
            $highestColumn = $sheet->getHighestColumn();
            Coordinate::columnIndexFromString($highestColumn);
            $lines = $highestRow - 1;
            if ($lines <= 0) {
                return  base_msg('数据不能为空');
            }
            // 直接取出excle中的数据
            $data = $objPHPExcel->getActiveSheet()->toArray();
            // 删除第一个元素（表头）
            array_shift($data);
            // 返回结果
            return $data;

//       } catch (ValidateException $e) {
//            return $e->getMessage();
//        }

    }
}