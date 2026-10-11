/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.core.helpers;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.zip.GZIPInputStream;
import org.eclipse.equinox.internal.p2.core.helpers.TarEntry;
import org.eclipse.equinox.internal.p2.core.helpers.TarException;
import org.eclipse.equinox.internal.p2.core.helpers.TarInputStream;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TarFile {
    private File file;
    private TarInputStream entryEnumerationStream;
    private TarEntry curEntry;
    private TarInputStream entryStream;
    private InputStream internalEntryStream;

    public TarFile(File file) throws TarException, IOException {
        this.file = file;
        InputStream in = new FileInputStream(file);
        try {
            in = new GZIPInputStream(in);
        }
        catch (IOException iOException) {
            in.close();
            in = new FileInputStream(file);
        }
        try {
            this.entryEnumerationStream = new TarInputStream(in);
        }
        catch (TarException ex) {
            in.close();
            throw ex;
        }
        this.curEntry = this.entryEnumerationStream.getNextEntry();
    }

    public void close() throws IOException {
        this.entryEnumerationStream.close();
        if (this.internalEntryStream != null) {
            this.internalEntryStream.close();
        }
    }

    public Enumeration<TarEntry> entries() {
        return new Enumeration<TarEntry>(){

            @Override
            public boolean hasMoreElements() {
                return TarFile.this.curEntry != null;
            }

            @Override
            public TarEntry nextElement() {
                TarEntry oldEntry = TarFile.this.curEntry;
                try {
                    TarFile.this.curEntry = TarFile.this.entryEnumerationStream.getNextEntry();
                }
                catch (TarException tarException) {
                    TarFile.this.curEntry = null;
                }
                catch (IOException iOException) {
                    TarFile.this.curEntry = null;
                }
                return oldEntry;
            }
        };
    }

    public InputStream getInputStream(TarEntry entry) throws TarException, IOException {
        if (this.entryStream == null || !this.entryStream.skipToEntry(entry)) {
            if (this.internalEntryStream != null) {
                this.internalEntryStream.close();
            }
            this.internalEntryStream = new FileInputStream(this.file);
            try {
                this.internalEntryStream = new GZIPInputStream(this.internalEntryStream);
            }
            catch (IOException iOException) {
                this.internalEntryStream.close();
                this.internalEntryStream = new FileInputStream(this.file);
            }
            this.entryStream = new TarInputStream(this.internalEntryStream, entry){

                public void close() {
                }
            };
        }
        return this.entryStream;
    }

    public String getName() {
        return this.file.getPath();
    }

    protected void finalize() throws Throwable {
        this.close();
    }
}

