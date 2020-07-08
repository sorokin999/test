<?php
class CSV
{

    public $handle;
    public $res;

    public function OpenFile($file)
    {
        $this->handle = fopen($file, 'r');
        while (($data = fgetcsv($this->handle, 1000, ";")) !== FALSE) {
           $this->res[] = $data;
        }
    }

    public function First()
    {
        echo '<pre>';
       $a=$this->res;
       print_r($a[1]);
       echo '<hr>';
    }

    public function Next($i)
    {   echo '<pre>';
        $a=$this->res;
        print_r($a[$i+1]);
        echo '<hr>';
    }

    public function Eof()
    {
        $a=(feof($this->handle));
        if($a)
        echo 'Конец файла';
         
    }
}
$MyCSV = new CSV;
$MyCSV->OpenFile('test.csv');
// $MyCSV->First();
// $MyCSV->Next(2);
$MyCSV->Eof();