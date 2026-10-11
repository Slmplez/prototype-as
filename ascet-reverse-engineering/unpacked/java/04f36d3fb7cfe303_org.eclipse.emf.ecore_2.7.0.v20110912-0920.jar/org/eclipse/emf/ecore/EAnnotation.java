/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 */
package org.eclipse.emf.ecore;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EModelElement;
import org.eclipse.emf.ecore.EObject;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EAnnotation
extends EModelElement {
    public String getSource();

    public void setSource(String var1);

    public EMap<String, String> getDetails();

    public EModelElement getEModelElement();

    public void setEModelElement(EModelElement var1);

    public EList<EObject> getContents();

    public EList<EObject> getReferences();
}

