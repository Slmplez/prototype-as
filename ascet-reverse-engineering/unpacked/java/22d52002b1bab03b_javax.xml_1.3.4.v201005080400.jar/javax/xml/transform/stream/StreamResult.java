/*
 * Decompiled with CFR 0.152.
 */
package javax.xml.transform.stream;

import java.io.File;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import javax.xml.transform.Result;

public class StreamResult
implements Result {
    public static final String FEATURE = "http://javax.xml.transform.stream.StreamResult/feature";
    private String systemId;
    private OutputStream outputStream;
    private Writer writer;

    public StreamResult() {
    }

    public StreamResult(OutputStream outputStream) {
        this.setOutputStream(outputStream);
    }

    public StreamResult(Writer writer) {
        this.setWriter(writer);
    }

    public StreamResult(String string) {
        this.systemId = string;
    }

    public StreamResult(File file) {
        this.setSystemId(file);
    }

    public void setOutputStream(OutputStream outputStream) {
        this.outputStream = outputStream;
    }

    public OutputStream getOutputStream() {
        return this.outputStream;
    }

    public void setWriter(Writer writer) {
        this.writer = writer;
    }

    public Writer getWriter() {
        return this.writer;
    }

    public void setSystemId(String string) {
        this.systemId = string;
    }

    public void setSystemId(File file) {
        try {
            Method method = file.getClass().getMethod("toURI", null);
            Object object = method.invoke(file, null);
            Method method2 = object.getClass().getMethod("toString", null);
            this.systemId = (String)method2.invoke(object, null);
        }
        catch (Exception exception) {
            try {
                this.systemId = file.toURL().toString();
            }
            catch (MalformedURLException malformedURLException) {
                this.systemId = null;
                throw new RuntimeException("javax.xml.transform.stream.StreamResult#setSystemId(File f) with MalformedURLException: " + malformedURLException.toString());
            }
        }
    }

    public String getSystemId() {
        return this.systemId;
    }
}

