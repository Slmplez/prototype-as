/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 */
package org.eclipse.emf.ecore.xmi.impl;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.xmi.impl.XMLSaveImpl;
import org.eclipse.emf.ecore.xmi.impl.XMLString;

public class ConfigurationCache {
    public static final ConfigurationCache INSTANCE = new ConfigurationCache();
    protected static final int SIZE = 100;
    protected Map<EPackage, EObject> documentRoots = new HashMap<EPackage, EObject>();
    protected XMLString[] printers = new XMLString[100];
    protected XMLSaveImpl.Escape[] escapes = new XMLSaveImpl.Escape[100];
    protected int freePrinterIndex = -1;
    protected int freeEscapeIndex = -1;
    protected int currentSize = 100;

    protected ConfigurationCache() {
    }

    protected synchronized XMLString getPrinter() {
        if (this.freePrinterIndex < 0) {
            return new XMLString();
        }
        XMLString printer = this.printers[this.freePrinterIndex];
        this.printers[this.freePrinterIndex--] = null;
        return printer;
    }

    protected synchronized void releasePrinter(XMLString printer) {
        ++this.freePrinterIndex;
        if (this.printers.length == this.freePrinterIndex) {
            this.currentSize += 100;
            XMLString[] newarray = new XMLString[this.currentSize];
            System.arraycopy(this.printers, 0, newarray, 0, this.printers.length);
            this.printers = newarray;
        }
        this.printers[this.freePrinterIndex] = printer;
    }

    protected synchronized XMLSaveImpl.Escape getEscape() {
        if (this.freeEscapeIndex < 0) {
            return new XMLSaveImpl.Escape();
        }
        XMLSaveImpl.Escape escape = this.escapes[this.freeEscapeIndex];
        this.escapes[this.freeEscapeIndex--] = null;
        return escape;
    }

    protected synchronized void releaseEscape(XMLSaveImpl.Escape escape) {
        ++this.freeEscapeIndex;
        if (this.escapes.length == this.freeEscapeIndex) {
            this.currentSize += 100;
            XMLSaveImpl.Escape[] newarray = new XMLSaveImpl.Escape[this.currentSize];
            System.arraycopy(this.escapes, 0, newarray, 0, this.escapes.length);
            this.escapes = newarray;
        }
        this.escapes[this.freeEscapeIndex] = escape;
    }

    public synchronized void release() {
        this.freeEscapeIndex = -1;
        this.freePrinterIndex = -1;
        int i = 0;
        while (i < this.printers.length) {
            this.printers[i] = null;
            ++i;
        }
        i = 0;
        while (i < this.escapes.length) {
            this.escapes[i] = null;
            ++i;
        }
    }

    public synchronized EClass getDocumentRoot(EPackage ePackage) {
        return (EClass)this.documentRoots.get(ePackage);
    }

    public synchronized void putDocumentRoot(EPackage ePackage, EClass documentRoot) {
        this.documentRoots.put(ePackage, (EObject)documentRoot);
    }
}

