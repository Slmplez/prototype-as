/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.ecore.change;

import java.util.Map;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.ChangePackage;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.FeatureMapEntry;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.change.impl.ChangeFactoryImpl;
import org.eclipse.emf.ecore.resource.Resource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ChangeFactory
extends EFactory {
    public static final ChangeFactory eINSTANCE = ChangeFactoryImpl.init();

    public ChangeDescription createChangeDescription();

    public FeatureChange createFeatureChange();

    public FeatureChange createFeatureChange(EStructuralFeature var1, Object var2, boolean var3);

    public ListChange createListChange();

    public ResourceChange createResourceChange();

    public ResourceChange createResourceChange(Resource var1, EList<Object> var2);

    public FeatureMapEntry createFeatureMapEntry();

    public FeatureMapEntry createFeatureMapEntry(EStructuralFeature var1, Object var2);

    public ChangePackage getChangePackage();

    public Map.Entry<EObject, EList<FeatureChange>> createEObjectToChangesMapEntry(EObject var1);
}

