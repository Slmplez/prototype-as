/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.util.FeatureMap
 */
package org.w3._2000._09.xmldsig;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.util.FeatureMap;

public interface SPKIDataType
extends EObject {
    public FeatureMap getGroup();

    public EList<byte[]> getSPKISexp();

    public FeatureMap getAny();
}

