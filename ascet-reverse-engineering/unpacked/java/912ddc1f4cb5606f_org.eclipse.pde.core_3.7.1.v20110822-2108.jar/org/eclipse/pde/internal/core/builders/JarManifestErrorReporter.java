/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.osgi.util.ManifestElement
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.pde.internal.core.builders;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.osgi.util.ManifestElement;
import org.eclipse.osgi.util.NLS;
import org.eclipse.pde.internal.core.PDECore;
import org.eclipse.pde.internal.core.PDECoreMessages;
import org.eclipse.pde.internal.core.builders.ErrorReporter;
import org.eclipse.pde.internal.core.builders.IHeader;
import org.eclipse.pde.internal.core.builders.JarManifestHeader;

public class JarManifestErrorReporter
extends ErrorReporter {
    protected Map fHeaders;
    protected IDocument fTextDocument;

    public JarManifestErrorReporter(IFile file) {
        super(file);
        this.fTextDocument = this.createDocument(file);
    }

    private String getHeaderName(String line) {
        int i = 0;
        while (i < line.length()) {
            char c = line.charAt(i);
            if (c == ':') {
                return line.substring(0, i);
            }
            if (!(c >= 'A' && 'Z' >= c || c >= 'a' && 'z' >= c || c >= '0' && '9' >= c)) {
                if (i == 0) {
                    return null;
                }
                if (c != '-' && c != '_') {
                    return null;
                }
            }
            ++i;
        }
        return null;
    }

    protected int getPackageLine(IHeader header, ManifestElement element) {
        String packageName = element.getValue();
        if (element.getDirectiveKeys() != null || element.getKeys() != null) {
            return this.getLine(header, String.valueOf(packageName) + ";");
        }
        try {
            IRegion lineRegion = this.fTextDocument.getLineInformation(header.getLineNumber() + header.getLinesSpan() - 1);
            String lineStr = this.fTextDocument.get(lineRegion.getOffset(), lineRegion.getLength());
            if (lineStr.endsWith(packageName)) {
                return header.getLineNumber() + header.getLinesSpan();
            }
        }
        catch (BadLocationException ble) {
            PDECore.logException(ble);
        }
        return this.getLine(header, String.valueOf(packageName) + ",");
    }

    protected int getLine(IHeader header, String valueSubstring) {
        int l = header.getLineNumber();
        while (l < header.getLineNumber() + header.getLinesSpan()) {
            try {
                IRegion lineRegion = this.fTextDocument.getLineInformation(l);
                String lineStr = this.fTextDocument.get(lineRegion.getOffset(), lineRegion.getLength());
                if (lineStr.indexOf(valueSubstring) >= 0) {
                    return l + 1;
                }
            }
            catch (BadLocationException ble) {
                PDECore.logException(ble);
            }
            ++l;
        }
        try {
            IRegion lineRegion = this.fTextDocument.getLineInformation(header.getLineNumber());
            String lineStr = this.fTextDocument.get(lineRegion.getOffset(), lineRegion.getLength());
            int l2 = header.getLineNumber() + 1;
            while (l2 < header.getLineNumber() + header.getLinesSpan()) {
                lineRegion = this.fTextDocument.getLineInformation(l2);
                if ((lineStr = String.valueOf(lineStr) + this.fTextDocument.get(lineRegion.getOffset() + 1, lineRegion.getLength())).indexOf(valueSubstring) >= 0) {
                    return l2;
                }
                ++l2;
            }
        }
        catch (BadLocationException ble) {
            PDECore.logException(ble);
        }
        return header.getLineNumber() + 1;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    protected void parseManifest(IDocument document, IProgressMonitor monitor) {
        try {
            String line;
            IRegion lineInfo;
            this.fHeaders = new HashMap();
            JarManifestHeader header = null;
            int l = 0;
            while (l < document.getNumberOfLines()) {
                ByteBuffer byteBuf;
                if (l % 100 == 0) {
                    this.checkCanceled(monitor);
                }
                lineInfo = document.getLineInformation(l);
                line = document.get(lineInfo.getOffset(), lineInfo.getLength());
                Charset charset = Charset.forName("UTF-8");
                String lineDelimiter = document.getLineDelimiter(l);
                if (lineDelimiter == null) {
                    lineDelimiter = "";
                }
                if ((byteBuf = charset.encode(line)).limit() + lineDelimiter.length() > 512) {
                    this.report(PDECoreMessages.BundleErrorReporter_lineTooLong, l + 1, 0, "fatal");
                    return;
                }
                if (line.length() == 0) {
                    if (l == 0) {
                        this.report(PDECoreMessages.BundleErrorReporter_noMainSection, 1, 0, "fatal");
                        return;
                    }
                    if (header == null) break;
                    this.fHeaders.put(header.getName().toLowerCase(), header);
                    header = null;
                    break;
                }
                if (line.charAt(0) == ' ') {
                    if (l == 0) {
                        this.report(PDECoreMessages.BundleErrorReporter_noMainSection, 1, 0, "fatal");
                        return;
                    }
                    if (header != null) {
                        header.append(line.substring(1));
                    }
                } else {
                    int colon;
                    if (header != null) {
                        this.fHeaders.put(header.getName().toLowerCase(), header);
                        header = null;
                    }
                    if ((colon = line.indexOf(58)) == -1) {
                        this.report(PDECoreMessages.BundleErrorReporter_noColon, l + 1, 0, "fatal");
                        return;
                    }
                    String headerName = this.getHeaderName(line);
                    if (headerName == null) {
                        this.report(PDECoreMessages.BundleErrorReporter_invalidHeaderName, l + 1, 0, "fatal");
                        return;
                    }
                    if (line.length() < colon + 2 || line.charAt(colon + 1) != ' ') {
                        this.report(PDECoreMessages.BundleErrorReporter_noSpaceValue, l + 1, 0, "fatal");
                        return;
                    }
                    if ("Name".equals(headerName)) {
                        this.report(PDECoreMessages.BundleErrorReporter_nameHeaderInMain, l + 1, 0, "fatal");
                        return;
                    }
                    header = new JarManifestHeader(headerName, line.substring(colon + 2), l, this);
                    if (this.fHeaders.containsKey(header.getName().toLowerCase())) {
                        this.report(PDECoreMessages.BundleErrorReporter_duplicateHeader, l + 1, 1, "");
                    }
                }
                ++l;
            }
            if (header != null) {
                this.report(PDECoreMessages.BundleErrorReporter_noLineTermination, l, 0, "fatal");
                return;
            }
            while (true) {
                if (l >= document.getNumberOfLines()) {
                    return;
                }
                lineInfo = document.getLineInformation(l);
                line = document.get(lineInfo.getOffset(), lineInfo.getLength());
                if (line.length() != 0) {
                    if (line.startsWith("Name:")) return;
                    this.report(PDECoreMessages.BundleErrorReporter_noNameHeader, l, 0, "fatal");
                    return;
                }
                ++l;
            }
        }
        catch (BadLocationException ble) {
            PDECore.logException(ble);
            return;
        }
    }

    protected void reportIllegalAttributeValue(IHeader header, String key, String value) {
        String msg = NLS.bind((String)PDECoreMessages.BundleErrorReporter_att_value, (Object[])new String[]{value, key});
        this.report(msg, this.getLine(header, String.valueOf(key) + "="), 0, "fatal");
    }

    protected void reportIllegalValue(IHeader header, String value) {
        String msg = NLS.bind((String)PDECoreMessages.BundleErrorReporter_illegal_value, (Object)value);
        this.report(msg, this.getLine(header, value), 0, "fatal");
    }

    protected void reportIllegalDirectiveValue(IHeader header, String key, String value) {
        String msg = NLS.bind((String)PDECoreMessages.BundleErrorReporter_dir_value, (Object[])new String[]{value, key});
        this.report(msg, this.getLine(header, String.valueOf(key) + ":="), 0, "fatal");
    }

    protected void validateAttributeValue(IHeader header, ManifestElement element, String key, String[] allowedValues) {
        String value = element.getAttribute(key);
        if (value == null) {
            return;
        }
        int i = 0;
        while (i < allowedValues.length) {
            if (allowedValues[i].equals(value)) {
                return;
            }
            ++i;
        }
        this.reportIllegalAttributeValue(header, key, value);
    }

    protected void validateBooleanAttributeValue(IHeader header, ManifestElement element, String key) {
        this.validateAttributeValue(header, element, key, BOOLEAN_VALUES);
    }

    protected void validateBooleanDirectiveValue(IHeader header, ManifestElement element, String key) {
        this.validateDirectiveValue(header, element, key, BOOLEAN_VALUES);
    }

    protected void validateBooleanValue(IHeader header) {
        this.validateHeaderValue(header, BOOLEAN_VALUES);
    }

    protected void validate(IProgressMonitor monitor) {
        if (this.fTextDocument != null) {
            this.parseManifest(this.fTextDocument, monitor);
        }
    }

    protected void validateDirectiveValue(IHeader header, ManifestElement element, String key, String[] allowedValues) {
        String value = element.getDirective(key);
        if (value == null) {
            return;
        }
        int i = 0;
        while (i < allowedValues.length) {
            if (allowedValues[i].equals(value)) {
                return;
            }
            ++i;
        }
        this.reportIllegalDirectiveValue(header, key, value);
    }

    protected void validateHeaderValue(IHeader header, String[] allowedValues) {
        ManifestElement[] elements = header.getElements();
        if (elements.length > 0) {
            int i = 0;
            while (i < allowedValues.length) {
                if (allowedValues[i].equals(elements[0].getValue())) {
                    return;
                }
                ++i;
            }
            this.reportIllegalValue(header, elements[0].getValue());
        }
    }

    protected IHeader validateRequiredHeader(String name) {
        IHeader header = (IHeader)this.fHeaders.get(name.toLowerCase());
        if (header == null) {
            this.report(NLS.bind((String)PDECoreMessages.BundleErrorReporter_headerMissing, (Object)name), 1, 0, "fatal");
        }
        return header;
    }

    protected IHeader getHeader(String key) {
        return (IHeader)this.fHeaders.get(key.toLowerCase());
    }

    protected void checkCanceled(IProgressMonitor monitor) throws OperationCanceledException {
        if (monitor.isCanceled()) {
            throw new OperationCanceledException();
        }
    }
}

