package project_techwiz2.springboot_techwiz2.service;


import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Service
public class CdService {
    Cloudinary cloudinary;
    private Map<String, String> valueMap = new HashMap<>();
    public CdService()
    {
        valueMap.put("cloud_name", "alpha1111");
        valueMap.put( "api_key", "976241969273617");
        valueMap.put("api_secret", "APMOsxPgya4bqwHdWHCChsF6mQ8");

        cloudinary = new Cloudinary(valueMap);
    }

    public Map upload(MultipartFile multipartFile)throws IOException
    {
        File file = convert(multipartFile);
        Map result = cloudinary.uploader().upload(file, ObjectUtils.emptyMap());
        file.delete();
        return result;
    }

    public File convert(MultipartFile multipartFile)throws IOException
    {
        File file = new File(multipartFile.getOriginalFilename());
        FileOutputStream fo = new FileOutputStream(file);
        fo.write(multipartFile.getBytes());
        fo.close();
        return file;
    }
}
