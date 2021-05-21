package com.shop.controller;

import com.shop.util.BusinessException;
import com.shop.util.Constants;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.util.Map;

@Controller
public class FileController {
    @RequestMapping("/show/{fileName}")
    public String show(@PathVariable String fileName, Map<String, Object> map){
        map.put("menuImg", fileName);
        return "/img";
    }

    @RequestMapping("/download/{fileName}")
    public void download(@PathVariable String fileName,HttpServletResponse response) throws BusinessException {
        File file = new File(Constants.FILE_PATH + fileName);
        if (file.exists()) {
            try {
                response.setHeader("Content-Disposition", "attachment;filename="+fileName);
                FileInputStream fis = new FileInputStream(file);
                OutputStream os = response.getOutputStream();
                byte[] b = new byte[1024];
                int len = 0;
                while ((len = fis.read(b)) != -1) {
                    os.write(b, 0, len);
                }
                fis.close();

            } catch (Exception e) {
                throw new BusinessException("E00C08");
            }
        } else {
            throw new BusinessException("E00C07");
        }
    }

    @RequestMapping("/shows/{name}")
    public void show(@PathVariable("name") String name,HttpServletResponse response) {
        File file = new File(Constants.FILE_PATH + name);
        if (file.exists()) {
            try {
//				response.setHeader("Content-Disposition", "attachment;filename="+name);
                FileInputStream fis = new FileInputStream(file);
                OutputStream os = response.getOutputStream();
                byte[] b = new byte[1024];
                int len = 0;
                while ((len = fis.read(b)) != -1) {
                    os.write(b, 0, len);
                }
                fis.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
