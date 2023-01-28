package datadriven;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class readExcelFile {
    //todo: dil secimi buradan degistirilir.
    public static String language = "tr"; // turkce icin tr, ingilizce icin en yazin.
    public static String filePath = "Data/new_homewhiz_mobile_translations_v1.xlsx";
    public static String fileTranslationsPath = "Data/new_homewhiz_mobile_translations_v1.xlsx";

    public static String getData(String id)  {
        File file = new File(filePath);
        FileInputStream inputStream = null;
        try {
            inputStream = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        Workbook workbook = null;
        try {
            workbook = new XSSFWorkbook(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }

        int i = 0;
        Sheet excelSheet = workbook.getSheet("Sheet1");

        while (i <= excelSheet.getLastRowNum() ) {

            Row row = excelSheet.getRow(i);
            String value2 = row.getCell(0).getStringCellValue();

            if (value2.equals(id)) {
                    if (language.equals("tr"))
                    {
                        value2 = row.getCell(2).getStringCellValue();
                    }
                    else if (language.equals("en")){
                        value2 = row.getCell(1).getStringCellValue();
                    }
                i=excelSheet.getLastRowNum();
                return value2;
            }
                i = i + 1;
        }
        return id;
    }

    public static String getTranslationsData(String id)  {
        File file = new File(fileTranslationsPath);
        FileInputStream inputStream = null;
        try {
            inputStream = new FileInputStream(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        Workbook workbook = null;
        try {
            workbook = new XSSFWorkbook(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }

        int i = 0;
        Sheet excelSheet = workbook.getSheet("Sheet1");

        while (i <= excelSheet.getLastRowNum() ) {

            Row row = excelSheet.getRow(i);
            String value2 = row.getCell(0).getStringCellValue();

            if (value2.equals(id)) {
                if (language.equals("en"))
                {
                    value2 = row.getCell(1).getStringCellValue();
                }
                else if (language.equals("tr")){
                    value2 = row.getCell(2).getStringCellValue();
                }
                i=excelSheet.getLastRowNum();
                return value2;
            }
            i = i + 1;
        }
        return id;
    }


}
