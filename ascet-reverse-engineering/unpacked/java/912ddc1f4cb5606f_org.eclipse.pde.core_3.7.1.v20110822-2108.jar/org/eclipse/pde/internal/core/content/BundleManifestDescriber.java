/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.content.IContentDescription
 *  org.eclipse.core.runtime.content.ITextContentDescriber
 */
package org.eclipse.pde.internal.core.content;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.content.IContentDescription;
import org.eclipse.core.runtime.content.ITextContentDescriber;

public class BundleManifestDescriber
implements ITextContentDescriber {
    private static final String[] HEADERS = new String[]{"Bundle-ManifestVersion", "Bundle-Name", "Bundle-Version", "Bundle-SymbolicName", "Bundle-Vendor", "Bundle-Activator"};
    private static final int LINES = 50;
    private static final QualifiedName[] SUPPORTED_OPTIONS = new QualifiedName[]{IContentDescription.BYTE_ORDER_MARK};

    public int describe(InputStream contents, IContentDescription description) throws IOException {
        String line;
        byte[] bom = this.getByteOrderMark(contents);
        contents.reset();
        String charset = "UTF-8";
        if (bom != null) {
            contents.skip(bom.length);
            if (bom == IContentDescription.BOM_UTF_8) {
                charset = "UTF-8";
            } else if (bom == IContentDescription.BOM_UTF_16BE || bom == IContentDescription.BOM_UTF_16LE) {
                charset = "UTF-16";
            }
            if (description != null && description.isRequested(IContentDescription.BYTE_ORDER_MARK)) {
                description.setProperty(IContentDescription.BYTE_ORDER_MARK, (Object)bom);
            }
        }
        BufferedReader reader = new BufferedReader(new InputStreamReader(contents, charset));
        int i = 0;
        while ((line = reader.readLine()) != null && i < 50) {
            if (this.matches(line)) {
                return 2;
            }
            ++i;
        }
        return 1;
    }

    public int describe(Reader contents, IContentDescription description) throws IOException {
        String line;
        BufferedReader reader = new BufferedReader(contents);
        int i = 0;
        while ((line = reader.readLine()) != null && i < 50) {
            if (this.matches(line)) {
                return 2;
            }
            ++i;
        }
        return 1;
    }

    byte[] getByteOrderMark(InputStream input) throws IOException {
        int first = input.read() & 0xFF;
        int second = input.read() & 0xFF;
        if (first == -1 || second == -1) {
            return null;
        }
        if (first == 254 && second == 255) {
            return IContentDescription.BOM_UTF_16BE;
        }
        if (first == 255 && second == 254) {
            return IContentDescription.BOM_UTF_16LE;
        }
        int third = input.read() & 0xFF;
        if (third == -1) {
            return null;
        }
        if (first == 239 && second == 187 && third == 191) {
            return IContentDescription.BOM_UTF_8;
        }
        return null;
    }

    public QualifiedName[] getSupportedOptions() {
        return SUPPORTED_OPTIONS;
    }

    private boolean matches(String line) {
        int i = 0;
        while (i < HEADERS.length) {
            int length = HEADERS[i].length();
            if (line.length() >= length && line.substring(0, length).equalsIgnoreCase(HEADERS[i])) {
                return true;
            }
            ++i;
        }
        return false;
    }
}

