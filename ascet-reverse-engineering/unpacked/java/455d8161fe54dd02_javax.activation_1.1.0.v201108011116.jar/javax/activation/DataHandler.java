/*
 * Decompiled with CFR 0.152.
 */
package javax.activation;

import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.net.URL;
import javax.activation.ActivationDataFlavor;
import javax.activation.CommandInfo;
import javax.activation.CommandMap;
import javax.activation.DataContentHandler;
import javax.activation.DataContentHandlerFactory;
import javax.activation.DataSource;
import javax.activation.MimeType;
import javax.activation.MimeTypeParseException;
import javax.activation.URLDataSource;
import javax.activation.UnsupportedDataTypeException;

public class DataHandler
implements Transferable {
    private final DataSource ds;
    private final DataFlavor flavor;
    private CommandMap commandMap;
    private DataContentHandler dch;
    private DataContentHandlerFactory originalFactory;
    private static DataContentHandlerFactory factory;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public DataHandler(DataSource ds) {
        Class clazz = DataHandler.class;
        synchronized (clazz) {
            this.originalFactory = factory;
        }
        this.ds = ds;
        this.flavor = new ActivationDataFlavor(ds.getContentType(), null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public DataHandler(Object data, String type) {
        Class clazz = DataHandler.class;
        synchronized (clazz) {
            this.originalFactory = factory;
        }
        this.ds = new ObjectDataSource(data, type);
        this.flavor = new ActivationDataFlavor((Class)data.getClass(), null);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public DataHandler(URL url) {
        Class clazz = DataHandler.class;
        synchronized (clazz) {
            this.originalFactory = factory;
        }
        this.ds = new URLDataSource(url);
        this.flavor = new ActivationDataFlavor(this.ds.getContentType(), null);
    }

    public DataSource getDataSource() {
        return this.ds;
    }

    public String getName() {
        return this.ds.getName();
    }

    public String getContentType() {
        return this.ds.getContentType();
    }

    public InputStream getInputStream() throws IOException {
        return this.ds.getInputStream();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void writeTo(OutputStream os) throws IOException {
        if (this.ds instanceof ObjectDataSource) {
            ObjectDataSource ods = (ObjectDataSource)this.ds;
            DataContentHandler dch = this.getDataContentHandler();
            if (dch == null) {
                throw new UnsupportedDataTypeException(ods.mimeType);
            }
            dch.writeTo(ods.data, ods.mimeType, os);
        } else {
            byte[] buffer = new byte[1024];
            InputStream is = this.getInputStream();
            try {
                int count;
                while ((count = is.read(buffer)) != -1) {
                    os.write(buffer, 0, count);
                }
            }
            finally {
                is.close();
            }
        }
    }

    public OutputStream getOutputStream() throws IOException {
        return this.ds.getOutputStream();
    }

    public synchronized DataFlavor[] getTransferDataFlavors() {
        return this.getDataContentHandler().getTransferDataFlavors();
    }

    public boolean isDataFlavorSupported(DataFlavor flavor) {
        DataFlavor[] flavors = this.getTransferDataFlavors();
        for (int i = 0; i < flavors.length; ++i) {
            DataFlavor dataFlavor = flavors[i];
            if (!dataFlavor.equals(flavor)) continue;
            return true;
        }
        return false;
    }

    public Object getTransferData(DataFlavor flavor) throws UnsupportedFlavorException, IOException {
        DataContentHandler dch = this.getDataContentHandler();
        if (dch != null) {
            return dch.getTransferData(flavor, this.ds);
        }
        if (this.flavor.match(flavor)) {
            if (this.ds instanceof ObjectDataSource) {
                return ((ObjectDataSource)this.ds).data;
            }
            return this.ds.getInputStream();
        }
        throw new UnsupportedFlavorException(flavor);
    }

    public CommandInfo[] getPreferredCommands() {
        return this.getCommandMap().getPreferredCommands(this.ds.getContentType());
    }

    public CommandInfo[] getAllCommands() {
        return this.getCommandMap().getAllCommands(this.ds.getContentType());
    }

    public CommandInfo getCommand(String cmdName) {
        return this.getCommandMap().getCommand(this.ds.getContentType(), cmdName);
    }

    public Object getContent() throws IOException {
        if (this.ds instanceof ObjectDataSource) {
            return ((ObjectDataSource)this.ds).data;
        }
        DataContentHandler dch = this.getDataContentHandler();
        if (dch != null) {
            return dch.getContent(this.ds);
        }
        return this.ds.getInputStream();
    }

    public Object getBean(CommandInfo cmdinfo) {
        try {
            return cmdinfo.getCommandObject(this, this.getClass().getClassLoader());
        }
        catch (IOException e) {
            return null;
        }
        catch (ClassNotFoundException e) {
            return null;
        }
    }

    public synchronized void setCommandMap(CommandMap commandMap) {
        this.commandMap = commandMap;
        this.dch = null;
    }

    private synchronized CommandMap getCommandMap() {
        return this.commandMap != null ? this.commandMap : CommandMap.getDefaultCommandMap();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private synchronized DataContentHandler getDataContentHandler() {
        DataContentHandlerFactory localFactory;
        Class clazz = DataHandler.class;
        synchronized (clazz) {
            if (factory != this.originalFactory) {
                this.dch = null;
                this.originalFactory = factory;
            }
            localFactory = this.originalFactory;
        }
        if (this.dch == null) {
            String mimeType = this.getMimeType(this.ds.getContentType());
            if (localFactory != null) {
                this.dch = localFactory.createDataContentHandler(mimeType);
            }
            if (this.dch == null) {
                this.dch = this.commandMap != null ? this.commandMap.createDataContentHandler(mimeType) : CommandMap.getDefaultCommandMap().createDataContentHandler(mimeType);
            }
        }
        return this.dch;
    }

    private String getMimeType(String contentType) {
        try {
            MimeType mimeType = new MimeType(contentType);
            return mimeType.getBaseType();
        }
        catch (MimeTypeParseException mimeTypeParseException) {
            return contentType;
        }
    }

    public static synchronized void setDataContentHandlerFactory(DataContentHandlerFactory newFactory) {
        if (factory != null) {
            throw new Error("javax.activation.DataHandler.setDataContentHandlerFactory has already been defined");
        }
        SecurityManager sm = System.getSecurityManager();
        if (sm != null) {
            sm.checkSetFactory();
        }
        factory = newFactory;
    }

    private class ObjectDataSource
    implements DataSource {
        private final Object data;
        private final String mimeType;

        public ObjectDataSource(Object data, String mimeType) {
            this.data = data;
            this.mimeType = mimeType;
        }

        public String getName() {
            return null;
        }

        public String getContentType() {
            return this.mimeType;
        }

        public InputStream getInputStream() throws IOException {
            final DataContentHandler dch = DataHandler.this.getDataContentHandler();
            if (dch == null) {
                throw new UnsupportedDataTypeException(this.mimeType);
            }
            PipedInputStream is = new PipedInputStream();
            final PipedOutputStream os = new PipedOutputStream(is);
            Thread thread = new Thread("DataHandler Pipe Pump"){

                /*
                 * WARNING - Removed try catching itself - possible behaviour change.
                 */
                public void run() {
                    try {
                        try {
                            dch.writeTo(ObjectDataSource.this.data, ObjectDataSource.this.mimeType, os);
                        }
                        finally {
                            os.close();
                        }
                    }
                    catch (IOException iOException) {
                        // empty catch block
                    }
                }
            };
            thread.start();
            return is;
        }

        public OutputStream getOutputStream() throws IOException {
            return null;
        }
    }
}

