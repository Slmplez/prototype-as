/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader
 *  org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException
 *  org.eclipse.jdt.internal.compiler.util.Util
 */
package org.eclipse.jdt.internal.compiler.tool;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Reader;
import java.io.Writer;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import javax.lang.model.element.Modifier;
import javax.lang.model.element.NestingKind;
import javax.tools.JavaFileObject;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.tool.Util;

public class ArchiveFileObject
implements JavaFileObject {
    private ZipEntry zipEntry;
    private ZipFile zipFile;
    private String entryName;
    private File file;
    private Charset charset;

    public ArchiveFileObject(File file, ZipFile zipFile, String entryName, Charset charset) {
        this.zipFile = zipFile;
        this.zipEntry = zipFile.getEntry(entryName);
        this.entryName = entryName;
        this.file = file;
        this.charset = charset;
    }

    @Override
    public Modifier getAccessLevel() {
        if (this.getKind() != JavaFileObject.Kind.CLASS) {
            return null;
        }
        ClassFileReader reader = null;
        try {
            reader = ClassFileReader.read((ZipFile)this.zipFile, (String)this.entryName);
        }
        catch (ClassFormatException classFormatException) {
        }
        catch (IOException iOException) {}
        if (reader == null) {
            return null;
        }
        int accessFlags = reader.accessFlags();
        if ((accessFlags & 1) != 0) {
            return Modifier.PUBLIC;
        }
        if ((accessFlags & 0x400) != 0) {
            return Modifier.ABSTRACT;
        }
        if ((accessFlags & 0x10) != 0) {
            return Modifier.FINAL;
        }
        return null;
    }

    @Override
    public JavaFileObject.Kind getKind() {
        String name = this.entryName.toLowerCase();
        if (name.endsWith(JavaFileObject.Kind.CLASS.extension)) {
            return JavaFileObject.Kind.CLASS;
        }
        if (name.endsWith(JavaFileObject.Kind.SOURCE.extension)) {
            return JavaFileObject.Kind.SOURCE;
        }
        if (name.endsWith(JavaFileObject.Kind.HTML.extension)) {
            return JavaFileObject.Kind.HTML;
        }
        return JavaFileObject.Kind.OTHER;
    }

    @Override
    public NestingKind getNestingKind() {
        switch (this.getKind()) {
            case SOURCE: {
                return NestingKind.TOP_LEVEL;
            }
            case CLASS: {
                ClassFileReader reader = null;
                try {
                    reader = ClassFileReader.read((ZipFile)this.zipFile, (String)this.entryName);
                }
                catch (ClassFormatException classFormatException) {
                }
                catch (IOException iOException) {}
                if (reader == null) {
                    return null;
                }
                if (reader.isAnonymous()) {
                    return NestingKind.ANONYMOUS;
                }
                if (reader.isLocal()) {
                    return NestingKind.LOCAL;
                }
                if (reader.isMember()) {
                    return NestingKind.MEMBER;
                }
                return NestingKind.TOP_LEVEL;
            }
        }
        return null;
    }

    @Override
    public boolean isNameCompatible(String simpleName, JavaFileObject.Kind kind) {
        return this.zipEntry.getName().endsWith(String.valueOf(simpleName) + kind.extension);
    }

    @Override
    public boolean delete() {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object o) {
        if (!(o instanceof ArchiveFileObject)) {
            return false;
        }
        ArchiveFileObject archiveFileObject = (ArchiveFileObject)o;
        return archiveFileObject.toUri().equals(this.toUri());
    }

    @Override
    public CharSequence getCharContent(boolean ignoreEncodingErrors) throws IOException {
        if (this.getKind() == JavaFileObject.Kind.SOURCE) {
            return Util.getCharContents(this, ignoreEncodingErrors, org.eclipse.jdt.internal.compiler.util.Util.getZipEntryByteContent((ZipEntry)this.zipEntry, (ZipFile)this.zipFile), this.charset.name());
        }
        return null;
    }

    @Override
    public long getLastModified() {
        return this.zipEntry.getTime();
    }

    @Override
    public String getName() {
        return this.zipEntry.getName();
    }

    @Override
    public InputStream openInputStream() throws IOException {
        return this.zipFile.getInputStream(this.zipEntry);
    }

    @Override
    public OutputStream openOutputStream() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public Reader openReader(boolean ignoreEncodingErrors) throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public Writer openWriter() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override
    public URI toUri() {
        try {
            return new URI("jar:" + this.file.toURI().getPath() + "!" + this.zipEntry.getName());
        }
        catch (URISyntaxException uRISyntaxException) {
            return null;
        }
    }

    public String toString() {
        return String.valueOf(this.file.getAbsolutePath()) + "[" + this.zipEntry.getName() + "]";
    }
}

