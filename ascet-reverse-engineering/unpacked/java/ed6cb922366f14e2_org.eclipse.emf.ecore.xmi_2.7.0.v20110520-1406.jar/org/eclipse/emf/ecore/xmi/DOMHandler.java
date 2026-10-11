/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 */
package org.eclipse.emf.ecore.xmi;

import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.xmi.DOMHelper;
import org.w3c.dom.Node;

public interface DOMHandler {
    public void recordValues(Node var1, EObject var2, EStructuralFeature var3, Object var4);

    public DOMHelper getDOMHelper();
}

