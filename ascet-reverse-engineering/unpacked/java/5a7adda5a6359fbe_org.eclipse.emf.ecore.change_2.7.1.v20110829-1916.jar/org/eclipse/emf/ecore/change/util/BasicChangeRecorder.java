/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEList$FastCompare
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.EcorePackage$Literals
 *  org.eclipse.emf.ecore.resource.Resource
 */
package org.eclipse.emf.ecore.change.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.EcorePackage;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.ChangeFactory;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.ListChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.change.util.ListDifferenceAnalyzer;
import org.eclipse.emf.ecore.resource.Resource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class BasicChangeRecorder
extends ListDifferenceAnalyzer {
    protected boolean recording;
    protected boolean recordingTransientFeatures = true;
    protected ChangeDescription changeDescription;

    public boolean isRecording() {
        return this.recording;
    }

    protected void setRecording(boolean recording) {
        this.recording = recording;
    }

    public boolean isRecordingTransientFeatures() {
        return this.recordingTransientFeatures;
    }

    public void setRecordingTransientFeatures(boolean recordingTransientFeatures) {
        this.recordingTransientFeatures = recordingTransientFeatures;
    }

    protected ChangeDescription getChangeDescription() {
        return this.changeDescription;
    }

    protected void setChangeDescription(ChangeDescription changeDescription) {
        this.changeDescription = changeDescription;
    }

    public void dispose() {
        this.changeDescription = null;
    }

    public ChangeDescription summarize() {
        if (this.isRecording()) {
            this.consolidateChanges();
            return this.getChangeDescription();
        }
        return null;
    }

    public ChangeDescription endRecording() {
        if (this.isRecording()) {
            this.setRecording(false);
            this.consolidateChanges();
            return this.getChangeDescription();
        }
        return null;
    }

    protected void consolidateChanges() {
        ChangeDescription changeDescription = this.getChangeDescription();
        for (Map.Entry entry : changeDescription.getObjectChanges()) {
            EObject eObject = (EObject)entry.getKey();
            for (FeatureChange featureChange : (EList)entry.getValue()) {
                this.finalizeChange(featureChange, eObject);
            }
        }
        for (ResourceChange resourceChange : changeDescription.getResourceChanges()) {
            this.finalizeChange(resourceChange);
        }
        this.eliminateEmptyChanges();
    }

    protected void eliminateEmptyChanges() {
        ChangeDescription changeDescription = this.getChangeDescription();
        Iterator i = changeDescription.getObjectChanges().iterator();
        while (i.hasNext()) {
            Map.Entry entry = (Map.Entry)i.next();
            EObject eObject = (EObject)entry.getKey();
            EList featureChanges = (EList)entry.getValue();
            Iterator j = featureChanges.iterator();
            while (j.hasNext()) {
                FeatureChange featureChange = (FeatureChange)j.next();
                EStructuralFeature feature = featureChange.getFeature();
                if (featureChange.isSet() != eObject.eIsSet(feature)) continue;
                Object value = featureChange.getValue();
                Object eObjectValue = eObject.eGet(feature);
                if (!(value == null ? eObject.eGet(feature) == null : value.equals(eObjectValue))) continue;
                j.remove();
            }
            if (!featureChanges.isEmpty()) continue;
            i.remove();
        }
        i = changeDescription.getResourceChanges().iterator();
        while (i.hasNext()) {
            ResourceChange resourceChange = (ResourceChange)i.next();
            if (!resourceChange.getResource().getContents().equals(resourceChange.getValue())) continue;
            i.remove();
        }
    }

    protected boolean shouldRecord(EStructuralFeature feature, EObject eObject) {
        return this.isRecording() && !feature.isDerived() && feature != EcorePackage.Literals.ECLASS__ESUPER_TYPES && feature != EcorePackage.Literals.ETYPED_ELEMENT__ETYPE && feature != EcorePackage.Literals.EOPERATION__EEXCEPTIONS && feature != EcorePackage.Literals.ECLASSIFIER__INSTANCE_CLASS_NAME;
    }

    protected void finalizeChange(ResourceChange change) {
        BasicEList.FastCompare oldList = new BasicEList.FastCompare((Collection)change.getResource().getContents());
        EList<?> newList = change.getValue();
        change.getListChanges().clear();
        this.createListChanges((EList<Object>)oldList, newList, change.getListChanges());
    }

    protected void finalizeChange(FeatureChange change, EObject eObject) {
        EStructuralFeature feature;
        if (change.isSet() && (feature = change.getFeature()).isMany()) {
            BasicEList oldList = new BasicEList((Collection)((EList)eObject.eGet(feature)));
            EList newList = (EList)change.getValue();
            EList<ListChange> listChanges = change.getListChanges();
            listChanges.clear();
            this.createListChanges((EList<Object>)oldList, newList, listChanges);
        }
    }

    protected EList<ResourceChange> getResourceChanges() {
        return this.getChangeDescription().getResourceChanges();
    }

    protected ResourceChange getResourceChange(Resource resource) {
        EList<ResourceChange> resourceChanges = this.getResourceChanges();
        int i = 0;
        int size = resourceChanges.size();
        while (i < size) {
            ResourceChange resourceChange;
            if ((resourceChange = (ResourceChange)resourceChanges.get(i++)).getResource() != resource) continue;
            return resourceChange;
        }
        return null;
    }

    protected List<FeatureChange> getFeatureChanges(EObject eObject) {
        ChangeDescription changeDescription = this.getChangeDescription();
        List featureChanges = (List)changeDescription.getObjectChanges().get((Object)eObject);
        if (featureChanges == null) {
            Map.Entry<EObject, EList<FeatureChange>> entry = ChangeFactory.eINSTANCE.createEObjectToChangesMapEntry(eObject);
            changeDescription.getObjectChanges().add(entry);
            featureChanges = (List)entry.getValue();
        }
        return featureChanges;
    }

    protected FeatureChange getFeatureChange(List<FeatureChange> featureChanges, EStructuralFeature eStructuralFeature) {
        int i = 0;
        int size = featureChanges.size();
        while (i < size) {
            FeatureChange featureChange;
            if ((featureChange = featureChanges.get(i++)).getFeature() != eStructuralFeature) continue;
            return featureChange;
        }
        return null;
    }

    protected FeatureChange createFeatureChange(EObject eObject, EStructuralFeature eStructuralFeature, Object value, boolean isSet) {
        return ChangeFactory.eINSTANCE.createFeatureChange(eStructuralFeature, value, isSet);
    }

    protected ResourceChange createResourceChange(Resource resource, EList<Object> value) {
        return ChangeFactory.eINSTANCE.createResourceChange(resource, value);
    }

    protected ChangeDescription createChangeDescription() {
        return ChangeFactory.eINSTANCE.createChangeDescription();
    }
}

