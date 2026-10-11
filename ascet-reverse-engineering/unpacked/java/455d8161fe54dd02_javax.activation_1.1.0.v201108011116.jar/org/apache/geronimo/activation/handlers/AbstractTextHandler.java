/*
 * Decompiled with CFR 0.152.
 */
package org.apache.geronimo.activation.handlers;

import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import javax.activation.DataContentHandler;
import javax.activation.DataSource;

public class AbstractTextHandler
implements DataContentHandler {
    private final DataFlavor flavour;

    public AbstractTextHandler(DataFlavor flavour) {
        this.flavour = flavour;
    }

    public DataFlavor[] getTransferDataFlavors() {
        return new DataFlavor[]{this.flavour};
    }

    public Object getTransferData(DataFlavor dataFlavor, DataSource dataSource) throws UnsupportedFlavorException, IOException {
        return this.flavour.equals(dataFlavor) ? this.getContent(dataSource) : null;
    }

    public Object getContent(DataSource ds) throws IOException {
        int count;
        InputStreamReader reader = new InputStreamReader(ds.getInputStream());
        StringBuffer result = new StringBuffer(1024);
        char[] buffer = new char[32768];
        while ((count = reader.read(buffer)) != -1) {
            result.append(buffer, 0, count);
        }
        return result.toString();
    }

    public void writeTo(Object o, String mimeType, OutputStream os) throws IOException {
        String s;
        if (o instanceof String) {
            s = (String)o;
        } else if (o != null) {
            s = o.toString();
        } else {
            return;
        }
        OutputStreamWriter writer = new OutputStreamWriter(os);
        writer.write(s);
        writer.flush();
    }
}

