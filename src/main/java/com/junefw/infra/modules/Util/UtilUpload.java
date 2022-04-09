package com.junefw.infra.modules.Util;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.junefw.infra.common.constants.Constants;
import com.junefw.infra.common.util.UtilDateTime;
import com.junefw.infra.modules.member.Member;

public class UtilUpload {

	public static void upload(MultipartFile multipartFile, String className, Member dto) throws Exception{
		String fileName = multipartFile.getOriginalFilename();
		System.out.println("fileName------------------" + fileName);
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		System.out.println("ext-------------------" + ext);
		String uuid = UUID.randomUUID().toString();
		System.out.println("uuid------------------" + uuid);
		String uuidFileName = uuid + "." + ext;
		System.out.println("uuidFileName-----------" + uuidFileName);
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10);
		String path = Constants.UPLOAD_PATH_PREFIX + "/" + pathModule + "/" + pathDate + "/";
		
		createPath(path);
		System.out.println("path-------------" + path);
		
		multipartFile.transferTo(new File(path + uuidFileName));
		
		System.out.println("new File(path + uuidFileName)-------------" + new File(path + uuidFileName));
		

		dto.setOriginalName(fileName);
		System.out.println("fileName------------------" + fileName);
		dto.setUuidName(uuidFileName);
		dto.setExt(ext);
		dto.setSize(multipartFile.getSize());
		
		
	}

	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if(!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}
}