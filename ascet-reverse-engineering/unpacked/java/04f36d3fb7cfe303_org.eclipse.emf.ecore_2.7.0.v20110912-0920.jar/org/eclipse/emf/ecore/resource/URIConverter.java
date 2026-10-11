/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 */
package org.eclipse.emf.ecore.resource;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.StringReader;
import java.io.Writer;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.resource.ContentHandler;
import org.eclipse.emf.ecore.resource.Resource;
import org.eclipse.emf.ecore.resource.URIHandler;
import org.eclipse.emf.ecore.resource.impl.ExtensibleURIConverterImpl;
import org.eclipse.emf.ecore.resource.impl.URIMappingRegistryImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface URIConverter {
    public static final String OPTION_URI_CONVERTER = "URI_CONVERTER";
    public static final String OPTION_RESPONSE = "RESPONSE";
    public static final String RESPONSE_TIME_STAMP_PROPERTY = "TIME_STAMP";
    public static final String RESPONSE_URI = "URI";
    public static final Map<URI, URI> URI_MAP = URIMappingRegistryImpl.INSTANCE.map();
    public static final String ATTRIBUTE_TIME_STAMP = "timeStamp";
    public static final long NULL_TIME_STAMP = -1L;
    public static final String ATTRIBUTE_LENGTH = "length";
    public static final String ATTRIBUTE_READ_ONLY = "readOnly";
    public static final String ATTRIBUTE_EXECUTABLE = "executable";
    public static final String ATTRIBUTE_ARCHIVE = "archive";
    public static final String ATTRIBUTE_HIDDEN = "hidden";
    public static final String ATTRIBUTE_DIRECTORY = "directory";
    public static final String OPTION_REQUESTED_ATTRIBUTES = "requestedAttributes";
    public static final URIConverter INSTANCE = new ExtensibleURIConverterImpl();

    public URI normalize(URI var1);

    public Map<URI, URI> getURIMap();

    public EList<URIHandler> getURIHandlers();

    public URIHandler getURIHandler(URI var1);

    public EList<ContentHandler> getContentHandlers();

    public InputStream createInputStream(URI var1) throws IOException;

    public InputStream createInputStream(URI var1, Map<?, ?> var2) throws IOException;

    public OutputStream createOutputStream(URI var1) throws IOException;

    public OutputStream createOutputStream(URI var1, Map<?, ?> var2) throws IOException;

    public void delete(URI var1, Map<?, ?> var2) throws IOException;

    public Map<String, ?> contentDescription(URI var1, Map<?, ?> var2) throws IOException;

    public boolean exists(URI var1, Map<?, ?> var2);

    public Map<String, ?> getAttributes(URI var1, Map<?, ?> var2);

    public void setAttributes(URI var1, Map<String, ?> var2, Map<?, ?> var3) throws IOException;

    public static interface Cipher {
        public OutputStream encrypt(OutputStream var1) throws Exception;

        public void finish(OutputStream var1) throws Exception;

        public InputStream decrypt(InputStream var1) throws Exception;

        public void finish(InputStream var1) throws Exception;
    }

    public static interface Loadable {
        public void loadResource(Resource var1) throws IOException;
    }

    public static interface Readable {
        public Reader asReader();

        public String getEncoding();
    }

    public static class ReadableInputStream
    extends InputStream
    implements Readable {
        private static final Pattern XML_HEADER = Pattern.compile("<\\?xml\\s+(?:version\\s*=\\s*\"[^\"]*\"\\s+)encoding\\s*=\\s*\"\\s*([^\\s\"]*)\"\\s*\\?>");
        protected String encoding;
        protected Reader reader;
        protected Buffer buffer;

        public static String getEncoding(String xmlString) {
            Matcher matcher = XML_HEADER.matcher(xmlString);
            return matcher.lookingAt() ? matcher.group(1) : null;
        }

        /*
         * Loose catch block
         */
        public static String getEncoding(Reader xmlReader) {
            block12: {
                xmlReader.mark(100);
                char[] buffer = new char[100];
                int length = xmlReader.read(buffer);
                if (length <= -1) break block12;
                Matcher matcher = XML_HEADER.matcher(new String(buffer, 0, length));
                String string = matcher.lookingAt() ? matcher.group(1) : null;
                try {
                    xmlReader.reset();
                }
                catch (IOException iOException) {
                    // empty catch block
                }
                return string;
            }
            try {
                xmlReader.reset();
            }
            catch (IOException iOException) {
                // empty catch block
            }
            return null;
            catch (IOException exception) {
                try {
                    xmlReader.reset();
                }
                catch (IOException iOException) {
                    // empty catch block
                }
                return null;
                catch (Throwable throwable) {
                    try {
                        xmlReader.reset();
                    }
                    catch (IOException iOException) {
                        // empty catch block
                    }
                    throw throwable;
                }
            }
        }

        public ReadableInputStream(Reader reader, String encoding) {
            this.reader = reader;
            this.encoding = encoding;
        }

        public ReadableInputStream(Reader xmlReader) {
            this.reader = xmlReader.markSupported() ? xmlReader : new BufferedReader(xmlReader);
            this.encoding = ReadableInputStream.getEncoding(this.reader);
        }

        public ReadableInputStream(String string, String encoding) {
            this(new StringReader(string), encoding);
        }

        public ReadableInputStream(String xmlString) {
            this(new StringReader(xmlString), ReadableInputStream.getEncoding(xmlString));
        }

        public int read() throws IOException {
            if (this.buffer == null) {
                this.buffer = new Buffer(100);
            }
            return this.buffer.read();
        }

        public Reader asReader() {
            return this.reader;
        }

        public String getEncoding() {
            return this.encoding;
        }

        public void close() throws IOException {
            super.close();
            this.reader.close();
        }

        public synchronized void reset() throws IOException {
            super.reset();
            this.reader.reset();
        }

        protected class Buffer
        extends ByteArrayOutputStream {
            protected int index;
            protected char[] characters;
            protected OutputStreamWriter writer;

            public Buffer(int size) throws IOException {
                super(size);
                this.characters = new char[size];
                this.writer = new OutputStreamWriter((OutputStream)this, ReadableInputStream.this.encoding);
            }

            public int read() throws IOException {
                if (this.index < this.count) {
                    return this.buf[this.index++];
                }
                this.index = 0;
                this.reset();
                int readCount = ReadableInputStream.this.reader.read(this.characters);
                if (readCount < 0) {
                    return -1;
                }
                this.writer.write(this.characters, 0, readCount);
                this.writer.flush();
                return this.buf[this.index++];
            }
        }
    }

    public static interface Saveable {
        public void saveResource(Resource var1) throws IOException;
    }

    public static interface Writeable {
        public Writer asWriter();

        public String getEncoding();
    }

    public static class WriteableOutputStream
    extends OutputStream
    implements Writeable {
        protected String encoding;
        protected Writer writer;
        protected Buffer buffer;

        public WriteableOutputStream(Writer writer, String encoding) {
            this.writer = writer;
            this.encoding = encoding;
        }

        public void write(int b) throws IOException {
            if (this.buffer == null) {
                this.buffer = new Buffer(100);
            }
            this.buffer.write(b);
        }

        public Writer asWriter() {
            return this.writer;
        }

        public String getEncoding() {
            return this.encoding;
        }

        public void close() throws IOException {
            super.close();
            this.writer.close();
        }

        public void flush() throws IOException {
            super.flush();
            this.buffer.flush();
            this.writer.flush();
        }

        protected class Buffer
        extends ByteArrayInputStream {
            protected int index;
            protected char[] characters;
            protected InputStreamReader reader;

            public Buffer(int size) throws IOException {
                super(new byte[size], 0, 0);
                this.characters = new char[size];
                this.reader = new InputStreamReader((InputStream)this, WriteableOutputStream.this.encoding);
            }

            public void write(int b) throws IOException {
                if (this.count < this.buf.length) {
                    this.buf[this.count++] = (byte)b;
                } else {
                    int readCount = this.reader.read(this.characters);
                    if (readCount > 0) {
                        WriteableOutputStream.this.writer.write(this.characters, 0, readCount);
                    }
                    this.count = 0;
                    this.index = 0;
                    this.pos = 0;
                    this.write(b);
                }
            }

            public void flush() throws IOException {
                int readCount = this.reader.read(this.characters);
                if (readCount > 0) {
                    WriteableOutputStream.this.writer.write(this.characters, 0, readCount);
                }
                this.count = 0;
                this.index = 0;
                this.pos = 0;
            }
        }
    }
}

