/*
 * Decompiled with CFR 0.152.
 */
package com.etas.ascet.webservice;

import com.aaatoolinterface.aaatoolinterface_impl.AaaToolInterfacePortType;
import com.etas.ascet.webservice.AaaToolInterfaceCustom;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

public final class AscetTransfer {
    private AscetTransfer() {
    }

    public static void transferToAscet(String path) {
        AaaToolInterfaceCustom toolInterface = new AaaToolInterfaceCustom();
        AaaToolInterfacePortType tool = toolInterface.getAaaToolInterfacePort();
        String ascetVersion = tool.toolVersion();
        if (ascetVersion.startsWith("V6.")) {
            File dirObj = new File(path);
            File importFile = new File(dirObj.getParent(), "arxmlImport.axl");
            try {
                ZipOutputStream out = new ZipOutputStream(new FileOutputStream(importFile));
                AscetTransfer.addDir(dirObj, out);
                out.close();
            }
            catch (IOException iOException) {
                tool.importFromPath(path);
            }
            tool.importFromZipFile(importFile.getAbsolutePath());
        } else {
            System.out.println(String.format("[ERROR] running ASCET instance has version %s. But only version %s and higher is supported.", ascetVersion, "V6.2.0"));
            System.out.println("[INFO] transfer aborted.");
        }
    }

    private static void addDir(File dirObj, ZipOutputStream out) throws IOException {
        File[] files = dirObj.listFiles();
        int i = 0;
        while (i < files.length) {
            if (files[i].isDirectory()) {
                AscetTransfer.addDir(files[i], out);
            } else {
                int len;
                String absolutePath = files[i].getAbsolutePath();
                FileInputStream in = new FileInputStream(absolutePath);
                out.putNextEntry(new ZipEntry(absolutePath.replace('\\', '/')));
                byte[] tmpBuf = new byte[16384];
                while ((len = in.read(tmpBuf)) > 0) {
                    out.write(tmpBuf, 0, len);
                }
                out.closeEntry();
                in.close();
            }
            ++i;
        }
    }
}

