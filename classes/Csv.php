<?php
class Csv
{
   /*
   * Imports csv file
   *
   * @param String $filename File path to csv file
   * @return Array $data Multi demensional array containing
   * associative arrays with the csv column names as keys
   */
		// make variables of parameters


   public function import($filename)
   {
       $file_handle = NULL;       
       $data = NULL;
       $keys = NULL;
       $record = NULL;

       if(file_exists($filename))
       {
           $file_handle = fopen($filename, "r");
       } 
       else
       {
           throw new Exception("File not found: " . $filename, null); 
       }

       while (!feof($file_handle) )
       {       
           $row = fgetcsv($file_handle, 1024);   

           if (is_array($row)) 
           {               

               //set record array keys from csv header
               if ($keys == NULL) 
               {   
                   $keys = array_flip($row);
               } 
               //set record array values from csv row
               elseif ($keys != NULL)
               {
                   foreach ($keys as $key => $value) 
                   {
                       $record[$key] = $row[$value];
                   }
                   $data[] = $record; 
               }   
           }
       }   

       if($file_handle) fclose($file_handle); 

       return $data; 
   }
}
?>