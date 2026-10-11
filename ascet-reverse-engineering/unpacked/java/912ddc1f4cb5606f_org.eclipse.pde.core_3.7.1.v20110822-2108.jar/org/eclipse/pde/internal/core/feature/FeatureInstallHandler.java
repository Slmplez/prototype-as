/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.pde.internal.core.feature;

import java.io.PrintWriter;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.pde.internal.core.feature.FeatureObject;
import org.eclipse.pde.internal.core.ifeature.IFeatureInstallHandler;
import org.w3c.dom.Node;

public class FeatureInstallHandler
extends FeatureObject
implements IFeatureInstallHandler {
    private static final long serialVersionUID = 1L;
    private String fLibrary;
    private String fHandlerName;

    public String getLibrary() {
        return this.fLibrary;
    }

    public String getHandlerName() {
        return this.fHandlerName;
    }

    public void setLibrary(String library) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fLibrary;
        this.fLibrary = library;
        this.firePropertyChanged("library", oldValue, library);
    }

    public void setHandlerName(String handlerName) throws CoreException {
        this.ensureModelEditable();
        String oldValue = this.fHandlerName;
        this.fHandlerName = handlerName;
        this.firePropertyChanged("handlerName", oldValue, handlerName);
    }

    public void restoreProperty(String name, Object oldValue, Object newValue) throws CoreException {
        if (name.equals("library")) {
            this.setLibrary((String)newValue);
        } else if (name.equals("handlerName")) {
            this.setHandlerName((String)newValue);
        } else {
            super.restoreProperty(name, oldValue, newValue);
        }
    }

    protected void parse(Node node) {
        this.fLibrary = this.getNodeAttribute(node, "library");
        this.fHandlerName = this.getNodeAttribute(node, "handler");
    }

    public void write(String indent, PrintWriter writer) {
        writer.print(String.valueOf(indent) + "<install-handler");
        if (this.fLibrary != null) {
            writer.print(" library=\"" + this.fLibrary + "\"");
        }
        if (this.fHandlerName != null) {
            writer.print(" handler=\"" + this.fHandlerName + "\"");
        }
        writer.println("/>");
    }
}

