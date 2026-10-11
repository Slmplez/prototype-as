/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import javax.activation.FileTypeMap;

public class MimetypesFileTypeMap
extends FileTypeMap {
    private static final String DEFAULT_TYPE = "application/octet-stream";
    private final Map types;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public MimetypesFileTypeMap() {
        FileInputStream is;
        File file;
        block28: {
            this.types = new HashMap();
            try {
                InputStream is2 = MimetypesFileTypeMap.class.getResourceAsStream("/META-INF/mimetypes.default");
                if (is2 == null) break block28;
                try {
                    this.loadStream(is2);
                }
                finally {
                    is2.close();
                }
            }
            catch (IOException e) {
                // empty catch block
            }
        }
        try {
            ClassLoader cl = MimetypesFileTypeMap.class.getClassLoader();
            Enumeration<URL> e = cl.getResources("/META-INF/mime.types");
            while (e.hasMoreElements()) {
                URL url = e.nextElement();
                try {
                    InputStream is3 = url.openStream();
                    try {
                        this.loadStream(is3);
                    }
                    finally {
                        is3.close();
                    }
                }
                catch (IOException e1) {}
            }
        }
        catch (SecurityException e) {
        }
        catch (IOException e) {
            // empty catch block
        }
        try {
            file = new File(System.getProperty("java.home"), "lib/mime.types");
            is = new FileInputStream(file);
            try {
                this.loadStream(is);
            }
            finally {
                ((InputStream)is).close();
            }
        }
        catch (SecurityException e) {
        }
        catch (FileNotFoundException e) {
        }
        catch (IOException e) {
            // empty catch block
        }
        try {
            file = new File(System.getProperty("user.home"), ".mime.types");
            is = new FileInputStream(file);
            try {
                this.loadStream(is);
            }
            finally {
                ((InputStream)is).close();
            }
        }
        catch (SecurityException e) {
        }
        catch (FileNotFoundException e) {
        }
        catch (IOException iOException) {
            // empty catch block
        }
    }

    public MimetypesFileTypeMap(String mimeTypeFileName) throws IOException {
        this();
        BufferedReader reader = new BufferedReader(new FileReader(mimeTypeFileName));
        try {
            String line;
            while ((line = reader.readLine()) != null) {
                this.addMimeTypes(line);
            }
            reader.close();
        }
        catch (IOException e) {
            try {
                reader.close();
            }
            catch (IOException e1) {
                // empty catch block
            }
            throw e;
        }
    }

    public MimetypesFileTypeMap(InputStream is) {
        this();
        try {
            this.loadStream(is);
        }
        catch (IOException iOException) {
            // empty catch block
        }
    }

    private void loadStream(InputStream is) throws IOException {
        String line;
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        while ((line = reader.readLine()) != null) {
            this.addMimeTypes(line);
        }
    }

    public synchronized void addMimeTypes(String mime_types) {
        StringTokenizer tok;
        int hashPos = mime_types.indexOf(35);
        if (hashPos != -1) {
            mime_types = mime_types.substring(0, hashPos);
        }
        if (!(tok = new StringTokenizer(mime_types)).hasMoreTokens()) {
            return;
        }
        String contentType = tok.nextToken();
        while (tok.hasMoreTokens()) {
            String fileType = tok.nextToken();
            this.types.put(fileType, contentType);
        }
    }

    public String getContentType(File f) {
        return this.getContentType(f.getName());
    }

    public synchronized String getContentType(String filename) {
        int index = filename.lastIndexOf(46);
        if (index == -1 || index == filename.length() - 1) {
            return DEFAULT_TYPE;
        }
        String fileType = filename.substring(index + 1);
        String contentType = (String)this.types.get(fileType);
        return contentType == null ? DEFAULT_TYPE : contentType;
    }
}

