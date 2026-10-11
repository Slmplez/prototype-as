/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.activation.DataSource;
import javax.activation.FileTypeMap;

public class FileDataSource
implements DataSource {
    private final File file;
    private FileTypeMap fileTypeMap;

    public FileDataSource(File file) {
        this.file = file;
    }

    public FileDataSource(String name) {
        this(new File(name));
    }

    public InputStream getInputStream() throws IOException {
        return new FileInputStream(this.file);
    }

    public OutputStream getOutputStream() throws IOException {
        return new FileOutputStream(this.file);
    }

    public String getContentType() {
        if (this.fileTypeMap == null) {
            return FileTypeMap.getDefaultFileTypeMap().getContentType(this.file);
        }
        return this.fileTypeMap.getContentType(this.file);
    }

    public String getName() {
        return this.file.getName();
    }

    public File getFile() {
        return this.file;
    }

    public void setFileTypeMap(FileTypeMap map) {
        this.fileTypeMap = map;
    }
}

