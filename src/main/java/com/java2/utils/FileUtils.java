package com.java2.utils;

import java.io.File;

public class FileUtils {
    public static void mkDir(File file) {
        if (!file.getParentFile().exists())
            mkDir(file.getParentFile());
        if(!file.mkdir())
            throw new RuntimeException("目录创建失败:"+file.getPath());
    }
}
