/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.ecore.change;

import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.ResourceChange;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ChangeDescription
extends EObject {
    public EMap<EObject, EList<FeatureChange>> getObjectChanges();

    public EList<EObject> getObjectsToDetach();

    public EList<EObject> getObjectsToAttach();

    public EList<ResourceChange> getResourceChanges();

    public void apply();

    public void applyAndReverse();

    public void copyAndReverse(Map<EObject, URI> var1);
}

