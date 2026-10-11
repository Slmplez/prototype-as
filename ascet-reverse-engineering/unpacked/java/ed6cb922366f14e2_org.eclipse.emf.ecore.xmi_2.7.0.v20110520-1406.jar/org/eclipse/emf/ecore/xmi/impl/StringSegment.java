/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.ListIterator;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.ecore.xmi.XMIPlugin;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class StringSegment
extends BasicEList<Element> {
    private static final long serialVersionUID = 1L;
    protected static final int LIST_SIZE = 100;
    protected static final int ELEMENT_SIZE = 1000;
    protected static final int BUFFER_SIZE = 8192;
    protected int segmentCapacity;
    protected byte[] outputbytes;
    protected char[] outputchars;
    protected char[] buffer;
    protected Element cursor;
    protected int cursorIndex = 0;
    protected String lineSeparator = System.getProperty("line.separator");
    protected String temporaryFileName;
    protected Writer temporaryFile;
    protected int bufferPosition;

    public StringSegment() {
        this(100);
    }

    public StringSegment(int minimumCapacity) {
        this(minimumCapacity, 1000);
    }

    public StringSegment(int minimumCapacity, int segmentCapacity) {
        super(minimumCapacity);
        this.segmentCapacity = segmentCapacity;
        this.cursor = new Element(this.segmentCapacity);
        this.add(this.cursor);
        this.outputchars = new char[8192];
    }

    public StringSegment(String temporaryFileName) {
        this(100, 1000);
        this.setTemporaryFileName(temporaryFileName);
    }

    public void setTemporaryFileName(String tempFile) {
        this.temporaryFileName = tempFile;
        this.buffer = (char[])(this.temporaryFileName != null ? new char[8192] : null);
    }

    public String getTemporaryFileName() {
        return this.temporaryFileName;
    }

    protected Object[] newData(int capacity) {
        return new Element[capacity];
    }

    public void reset() {
        this.bufferPosition = 0;
        this.cursor = (Element)this.data[0];
        this.cursorIndex = 0;
        int i = 0;
        while (i < this.size) {
            ((Element)this.data[i]).size = 0;
            ++i;
        }
    }

    public void add(String newString) {
        if (this.temporaryFile != null) {
            int length = newString.length();
            if (length + this.bufferPosition >= this.buffer.length) {
                try {
                    this.temporaryFile.write(this.buffer, 0, this.bufferPosition);
                }
                catch (IOException exception) {
                    XMIPlugin.INSTANCE.log(exception);
                }
                this.bufferPosition = 0;
                if (length > this.buffer.length) {
                    this.buffer = new char[length];
                }
            }
            newString.getChars(0, length, this.buffer, this.bufferPosition);
            this.bufferPosition += length;
            return;
        }
        if (this.cursor.size < this.segmentCapacity) {
            this.cursor.add(newString);
            return;
        }
        Element oldCursor = this.cursor;
        int index = this.size - 1;
        if (this.cursorIndex < index) {
            this.cursor = (Element)this.data[++this.cursorIndex];
            if (this.cursor.size == 0) {
                this.cursor.add(newString);
                return;
            }
        }
        this.cursor = new Element(this.segmentCapacity);
        this.cursor.add(newString);
        if (this.data[index] == oldCursor) {
            super.add((Object)this.cursor);
            this.cursorIndex = ++index;
        } else {
            int counter = 0;
            while (counter < index) {
                if (this.data[counter++] != oldCursor) continue;
                this.cursorIndex = counter;
                super.add(this.cursorIndex, (Object)this.cursor);
                break;
            }
        }
    }

    public void addLine() {
        this.add(this.lineSeparator);
    }

    public Object mark() {
        int i;
        Element result = this.cursor;
        if (this.cursor.size == 0) {
            result.add("");
        }
        if (this.cursorIndex < (i = this.size - 1)) {
            this.cursor = (Element)this.data[++this.cursorIndex];
        } else {
            ++this.cursorIndex;
            this.cursor = new Element(this.segmentCapacity);
            super.add((Object)this.cursor);
        }
        return result;
    }

    public void startFileBuffering() {
        if (this.temporaryFileName != null && this.temporaryFile == null) {
            try {
                this.temporaryFile = new OutputStreamWriter((OutputStream)new FileOutputStream(this.temporaryFileName), "UTF8");
            }
            catch (IOException iOException) {
                // empty catch block
            }
        }
    }

    public void resetToMark(Object mark) {
        if (this.temporaryFile != null) {
            this.cursor.add("");
            try {
                this.temporaryFile.write(this.buffer, 0, this.bufferPosition);
                this.temporaryFile.close();
            }
            catch (IOException exception) {
                XMIPlugin.INSTANCE.log(exception);
            }
            this.temporaryFile = null;
        }
        this.cursor = (Element)mark;
        int i = 0;
        while (i < this.data.length) {
            if (this.data[i] == this.cursor) {
                this.cursorIndex = i;
                return;
            }
            ++i;
        }
    }

    public int getLength() {
        Element[] elements = (Element[])this.data;
        int length = 0;
        int i = 0;
        while (i < this.size) {
            Element element = elements[i];
            int segmentSize = element.size;
            int j = 0;
            while (j < segmentSize) {
                String s = element.data[j];
                length += s.length();
                ++j;
            }
            ++i;
        }
        return length;
    }

    public int getChars(char[] destination, int position) {
        Element[] elements = (Element[])this.data;
        int i = 0;
        while (i < this.size) {
            Element element = elements[i];
            int segmentSize = element.size;
            int j = 0;
            while (j < segmentSize) {
                String string = element.data[j];
                int length = string.length();
                string.getChars(0, length, destination, position);
                position += length;
                ++j;
            }
            ++i;
        }
        return position;
    }

    public void writeAscii(OutputStream os, int flushThreshold) throws IOException {
        if (this.outputbytes == null) {
            this.outputbytes = new byte[8192];
        }
        Element[] elements = (Element[])this.data;
        int position = 0;
        int count = 0;
        int i = 0;
        while (i < this.size) {
            Element element = elements[i];
            int segmentSize = element.size;
            int j = 0;
            while (j < segmentSize) {
                String string = element.data[j];
                int length = string.length();
                if (length + position >= this.outputchars.length) {
                    int x = 0;
                    while (x < position) {
                        this.outputbytes[x] = (byte)(this.outputchars[x] & 0xFF);
                        ++x;
                    }
                    os.write(this.outputbytes, 0, position);
                    position = 0;
                    if (length > this.outputchars.length) {
                        this.outputchars = new char[length];
                        this.outputbytes = new byte[length];
                    }
                }
                string.getChars(0, length, this.outputchars, position);
                position += length;
                if ((count += length) > flushThreshold) {
                    os.flush();
                    count = 0;
                }
                ++j;
            }
            ++i;
        }
        int x = 0;
        while (x < position) {
            this.outputbytes[x] = (byte)(this.outputchars[x] & 0xFF);
            ++x;
        }
        os.write(this.outputbytes, 0, position);
        String temporaryFileName = this.temporaryFileName;
        if (temporaryFileName != null) {
            FileInputStream inputStream = new FileInputStream(temporaryFileName);
            int length = ((InputStream)inputStream).read(this.outputbytes, 0, this.outputbytes.length);
            while (length > 0) {
                os.write(this.outputbytes, 0, length);
                if ((count += length) > flushThreshold) {
                    os.flush();
                    count = 0;
                }
                length = ((InputStream)inputStream).read(this.outputbytes, 0, this.outputbytes.length);
            }
            ((InputStream)inputStream).close();
            new File(temporaryFileName).delete();
        }
    }

    @Deprecated
    public void write(OutputStreamWriter os, int flushThreshold) throws IOException {
        this.write((Writer)os, flushThreshold);
    }

    public void write(Writer os, int flushThreshold) throws IOException {
        Element[] elements = (Element[])this.data;
        int position = 0;
        int count = 0;
        int i = 0;
        while (i < this.size) {
            Element element = elements[i];
            int segmentSize = element.size;
            int j = 0;
            while (j < segmentSize) {
                String string = element.data[j];
                int length = string.length();
                if (length + position >= this.outputchars.length) {
                    os.write(this.outputchars, 0, position);
                    position = 0;
                    if (length > this.outputchars.length) {
                        this.outputchars = new char[length];
                    }
                }
                string.getChars(0, length, this.outputchars, position);
                position += length;
                if ((count += length) > flushThreshold) {
                    os.flush();
                    count = 0;
                }
                ++j;
            }
            ++i;
        }
        os.write(this.outputchars, 0, position);
        String temporaryFileName = this.temporaryFileName;
        if (temporaryFileName != null) {
            InputStreamReader reader = new InputStreamReader((InputStream)new FileInputStream(temporaryFileName), "UTF8");
            int length = reader.read(this.outputchars, 0, this.outputchars.length);
            while (length > 0) {
                os.write(this.outputchars, 0, length);
                if ((count += length) > flushThreshold) {
                    os.flush();
                    count = 0;
                }
                length = reader.read(this.outputchars, 0, this.outputchars.length);
            }
            reader.close();
            new File(temporaryFileName).delete();
        }
    }

    public Iterator<Element> iterator() {
        return new SegmentIterator();
    }

    public ListIterator<Element> listIterator() {
        return new SegmentIterator();
    }

    public Iterator<String> stringIterator() {
        return new SegmentIterator();
    }

    protected static class Element {
        int size;
        String[] data;

        Element(int capacity) {
            this.data = new String[capacity];
        }

        void add(String newString) {
            this.data[this.size++] = newString;
        }
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    protected class SegmentIterator
    implements ListIterator<String> {
        protected int outerIndex = 0;
        protected int innerIndex = 0;

        SegmentIterator() {
        }

        @Override
        public boolean hasNext() {
            return this.outerIndex < StringSegment.this.size - 1 || this.outerIndex == StringSegment.this.size - 1 && this.innerIndex < ((Element)((StringSegment)StringSegment.this).data[this.outerIndex]).size;
        }

        @Override
        public boolean hasPrevious() {
            return this.outerIndex > 0 || this.innerIndex > 0;
        }

        @Override
        public String next() {
            Element element = (Element)StringSegment.this.data[this.outerIndex];
            if (this.innerIndex < element.size) {
                return element.data[this.innerIndex++];
            }
            this.innerIndex = 1;
            return ((Element)((StringSegment)StringSegment.this).data[++this.outerIndex]).data[0];
        }

        @Override
        public String previous() {
            if (this.innerIndex > 0) {
                return ((Element)((StringSegment)StringSegment.this).data[this.outerIndex]).data[--this.innerIndex];
            }
            Element element = (Element)StringSegment.this.data[--this.outerIndex];
            this.innerIndex = element.size - 1;
            return element.data[this.innerIndex];
        }

        @Override
        public void add(String newElement) {
            throw new UnsupportedOperationException(SegmentIterator.class.toString());
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException(SegmentIterator.class.toString());
        }

        @Override
        public void set(String newElement) {
            throw new UnsupportedOperationException(SegmentIterator.class.toString());
        }

        @Override
        public int nextIndex() {
            throw new UnsupportedOperationException(SegmentIterator.class.toString());
        }

        @Override
        public int previousIndex() {
            throw new UnsupportedOperationException(SegmentIterator.class.toString());
        }
    }
}

