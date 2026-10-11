/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.resource.Resource$Diagnostic
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.resource.Resource;

public class XMIException
extends Exception
implements Resource.Diagnostic {
    private static final long serialVersionUID = 1L;
    protected String location;
    protected int line;
    protected int column;

    public XMIException(String message) {
        super(message);
    }

    public XMIException(Exception exception) {
        super(exception);
    }

    public XMIException(String message, Exception exception) {
        super(message, exception);
    }

    public XMIException(String message, String location, int line, int column) {
        super(message);
        this.location = location;
        this.line = line;
        this.column = column;
    }

    public XMIException(String message, Exception exception, String location, int line, int column) {
        super(message, exception);
        this.location = location;
        this.line = line;
        this.column = column;
    }

    public XMIException(Exception exception, String location, int line, int column) {
        super(exception);
        this.location = location;
        this.line = line;
        this.column = column;
    }

    public String getMessage() {
        String result = super.getMessage();
        if (this.line != 0) {
            result = String.valueOf(result) + " (" + this.location + ", " + this.line + ", " + this.column + ")";
        }
        return result;
    }

    public String getLocation() {
        return this.location;
    }

    public int getLine() {
        return this.line;
    }

    public int getColumn() {
        return this.column;
    }

    @Deprecated
    public Exception getWrappedException() {
        return (Exception)this.getCause();
    }
}

