/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.eclipse.equinox.internal.p2.core.helpers.TarEntry;
import org.eclipse.equinox.internal.p2.core.helpers.TarException;

public class TarInputStream
extends FilterInputStream {
    private int nextEntry = 0;
    private int nextEOF = 0;
    private int filepos = 0;
    private int bytesread = 0;
    private TarEntry firstEntry = null;
    private String longLinkName = null;

    public TarInputStream(InputStream in) throws TarException, IOException {
        super(in);
        this.firstEntry = this.getNextEntry();
    }

    TarInputStream(InputStream in, TarEntry entry) throws TarException, IOException {
        super(in);
        this.skipToEntry(entry);
    }

    private long headerChecksum(byte[] header) {
        long sum = 0L;
        int i = 0;
        while (i < 512) {
            sum += (long)(header[i] & 0xFF);
            ++i;
        }
        return sum;
    }

    /*
     * Unable to fully structure code
     */
    boolean skipToEntry(TarEntry entry) throws TarException, IOException {
        bytestoskip = entry.filepos - this.bytesread;
        if (bytestoskip >= 0) ** GOTO lbl9
        return false;
lbl-1000:
        // 1 sources

        {
            ret = this.in.skip(bytestoskip);
            if (ret < 0L) {
                throw new IOException("early end of stream");
            }
            bytestoskip = (int)((long)bytestoskip - ret);
            this.bytesread = (int)((long)this.bytesread + ret);
lbl9:
            // 2 sources

            ** while (bytestoskip > 0)
        }
lbl10:
        // 1 sources

        this.filepos = entry.filepos;
        this.nextEntry = 0;
        this.nextEOF = 0;
        this.getNextEntry();
        return true;
    }

    private boolean isValidTarHeader(byte[] header) {
        long fileChecksum;
        int pos = 148;
        StringBuffer checksumString = new StringBuffer();
        int i = 0;
        while (i < 8) {
            if (header[pos + i] != 32) {
                if (header[pos + i] == 0 || !Character.isDigit((char)header[pos + i])) break;
                checksumString.append((char)header[pos + i]);
            }
            ++i;
        }
        if (checksumString.length() == 0) {
            return false;
        }
        if (checksumString.charAt(0) != '0') {
            checksumString.insert(0, '0');
        }
        try {
            fileChecksum = Long.decode(checksumString.toString());
        }
        catch (NumberFormatException numberFormatException) {
            return false;
        }
        i = 0;
        while (i < 8) {
            header[pos + i] = 32;
            ++i;
        }
        long calculatedChecksum = this.headerChecksum(header);
        return fileChecksum == calculatedChecksum;
    }

    /*
     * Unable to fully structure code
     */
    TarEntry getNextEntryInternal() throws TarException, IOException {
        header = new byte[512];
        pos = 0;
        if (this.firstEntry == null) ** GOTO lbl12
        entryReturn = this.firstEntry;
        this.firstEntry = null;
        return entryReturn;
lbl-1000:
        // 1 sources

        {
            ret = this.in.skip(this.nextEntry);
            if (ret < 0L) {
                throw new IOException("early end of stream");
            }
            this.nextEntry = (int)((long)this.nextEntry - ret);
            this.bytesread = (int)((long)this.bytesread + ret);
lbl12:
            // 2 sources

            ** while (this.nextEntry > 0)
        }
lbl13:
        // 1 sources

        bytestoread = 512;
        while (bytestoread > 0) {
            ret = super.read(header, 512 - bytestoread, bytestoread);
            if (ret < 0) {
                throw new IOException("early end of stream");
            }
            bytestoread -= ret;
            this.bytesread += ret;
        }
        if (this.headerChecksum(header) == 0L) {
            if (this.filepos > 0) {
                return null;
            }
            throw new TarException("not in tar format");
        }
        if (this.isValidTarHeader(header)) ** GOTO lbl28
        throw new TarException("not in tar format");
lbl-1000:
        // 1 sources

        {
            ++pos;
lbl28:
            // 2 sources

            ** while (pos < 100 && header[pos] != 0)
        }
lbl29:
        // 1 sources

        name = new String(header, 0, pos, "UTF8");
        pos = 345;
        if (header[pos] != 0) {
            while (pos < 500 && header[pos] != 0) {
                ++pos;
            }
            prefix = new String(header, 345, pos - 345, "UTF8");
            name = String.valueOf(prefix) + "/" + name;
        }
        if (this.longLinkName != null) {
            entry = new TarEntry(this.longLinkName, this.filepos);
            this.longLinkName = null;
        } else {
            entry = new TarEntry(name, this.filepos);
        }
        if (header[156] != 0) {
            entry.setFileType(header[156]);
        }
        pos = 100;
        mode = new StringBuffer();
        i = 0;
        while (i < 8) {
            if (header[pos + i] == 0) break;
            if (header[pos + i] != 32) {
                mode.append((char)header[pos + i]);
            }
            ++i;
        }
        if (mode.length() > 0 && mode.charAt(0) != '0') {
            mode.insert(0, '0');
        }
        try {
            fileMode = Long.decode(mode.toString());
            entry.setMode(fileMode);
        }
        catch (NumberFormatException nfe) {
            throw new TarException("Not a valid TAR format.", nfe);
        }
        pos = 124;
        size = new StringBuffer();
        i = 0;
        while (i < 12) {
            if (header[pos + i] == 0) break;
            if (header[pos + i] != 32) {
                size.append((char)header[pos + i]);
            }
            ++i;
        }
        if (size.charAt(0) != '0') {
            size.insert(0, '0');
        }
        try {
            fileSize = Integer.decode(size.toString());
        }
        catch (NumberFormatException nfe) {
            throw new TarException("Not a valid TAR format.", nfe);
        }
        entry.setSize(fileSize);
        this.nextEOF = fileSize;
        this.nextEntry = fileSize % 512 > 0 ? fileSize + (512 - fileSize % 512) : fileSize;
        this.filepos += this.nextEntry + 512;
        return entry;
    }

    public TarEntry getNextEntry() throws TarException, IOException {
        TarEntry entry = this.getNextEntryInternal();
        if (entry != null && entry.getName().equals("././@LongLink")) {
            byte[] longNameData = new byte[(int)entry.getSize()];
            int bytesread = 0;
            while (bytesread < longNameData.length) {
                int cur = this.read(longNameData, bytesread, longNameData.length - bytesread);
                if (cur < 0) {
                    throw new IOException("early end of stream");
                }
                bytesread += cur;
            }
            int pos = 0;
            while (pos < longNameData.length && longNameData[pos] != 0) {
                ++pos;
            }
            this.longLinkName = new String(longNameData, 0, pos, "UTF8");
            return this.getNextEntryInternal();
        }
        return entry;
    }

    public int read(byte[] b, int off, int len) throws IOException {
        if (this.nextEOF == 0) {
            return -1;
        }
        if (len > this.nextEOF) {
            len = this.nextEOF;
        }
        int size = super.read(b, off, len);
        this.nextEntry -= size;
        this.nextEOF -= size;
        this.bytesread += size;
        return size;
    }

    public int read() throws IOException {
        byte[] data = new byte[1];
        int size = this.read(data, 0, 1);
        if (size < 0) {
            return size;
        }
        return data[0];
    }
}

