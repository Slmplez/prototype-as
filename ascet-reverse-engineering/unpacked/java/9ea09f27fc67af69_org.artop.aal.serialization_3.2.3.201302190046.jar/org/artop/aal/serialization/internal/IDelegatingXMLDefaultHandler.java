/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 *  org.eclipse.emf.ecore.xmi.XMLDefaultHandler
 */
package org.artop.aal.serialization.internal;

import java.util.List;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;
import org.eclipse.emf.ecore.xmi.XMLDefaultHandler;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface IDelegatingXMLDefaultHandler
extends XMLDefaultHandler {
    public EFactory getEFactory();

    public String getLocation();

    public int getLineNumber();

    public int getColumnNumber();

    public void decrementLevel();

    public boolean contains(EObjectResolvingEList<?> var1, String var2);

    public List<EStructuralFeature> createFeatureFromSkippedElement(String var1, EObject var2);
}

