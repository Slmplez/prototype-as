/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import java.net.URLConnection;
import javax.activation.DataSource;

public class URLDataSource
implements DataSource {
    private static final String DEFAULT_CONTENT_TYPE = "application/octet-stream";
    private final URL url;

    public URLDataSource(URL url) {
        this.url = url;
    }

    public String getContentType() {
        try {
            URLConnection connection = this.url.openConnection();
            String type = connection.getContentType();
            return type == null ? DEFAULT_CONTENT_TYPE : type;
        }
        catch (IOException e) {
            return DEFAULT_CONTENT_TYPE;
        }
    }

    public String getName() {
        return this.url.getFile();
    }

    public InputStream getInputStream() throws IOException {
        return this.url.openStream();
    }

    public OutputStream getOutputStream() throws IOException {
        URLConnection connection = this.url.openConnection();
        connection.setDoOutput(true);
        return connection.getOutputStream();
    }

    public URL getURL() {
        return this.url;
    }
}

