/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.BasicEList
 *  org.eclipse.emf.common.util.BasicEMap
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.change.ChangeDescription
 *  org.eclipse.emf.ecore.change.FeatureChange
 *  org.eclipse.emf.ecore.change.ResourceChange
 *  org.eclipse.emf.ecore.change.impl.ChangeDescriptionImpl
 */
package org.eclipse.emf.transaction.util;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import org.eclipse.emf.common.util.BasicEList;
import org.eclipse.emf.common.util.BasicEMap;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.change.ChangeDescription;
import org.eclipse.emf.ecore.change.FeatureChange;
import org.eclipse.emf.ecore.change.ResourceChange;
import org.eclipse.emf.ecore.change.impl.ChangeDescriptionImpl;
import org.eclipse.emf.transaction.TransactionChangeDescription;
import org.eclipse.emf.transaction.util.TransactionUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class CompositeChangeDescription
extends ChangeDescriptionImpl
implements TransactionChangeDescription {
    private final List<ChangeDescription> changes = new ArrayList<ChangeDescription>();

    @Override
    public final boolean isEmpty() {
        return this.changes.isEmpty();
    }

    public final void clear() {
        this.changes.clear();
    }

    void dispose() {
        for (ChangeDescription next : this.changes) {
            TransactionUtil.dispose(next);
        }
    }

    @Override
    public boolean canApply() {
        boolean result = true;
        Iterator<ChangeDescription> iter = this.changes.iterator();
        while (result && iter.hasNext()) {
            ChangeDescription next = iter.next();
            if (!(next instanceof TransactionChangeDescription)) continue;
            result = ((TransactionChangeDescription)next).canApply();
        }
        return result;
    }

    public void apply() {
        ListIterator<ChangeDescription> iter = this.changes.listIterator(this.changes.size());
        while (iter.hasPrevious()) {
            iter.previous().apply();
        }
        this.changes.clear();
    }

    public void applyAndReverse() {
        ListIterator<ChangeDescription> iter = this.changes.listIterator(this.changes.size());
        while (iter.hasPrevious()) {
            iter.previous().applyAndReverse();
        }
        Collections.reverse(this.changes);
    }

    public void add(ChangeDescription change) {
        if (!this.isEmpty(change)) {
            if (change instanceof CompositeChangeDescription) {
                CompositeChangeDescription other = (CompositeChangeDescription)change;
                for (ChangeDescription next : other.changes) {
                    this.add(next);
                }
            } else {
                this.changes.add(change);
                if (this.objectChanges != null) {
                    this.objectChanges.addAll((Collection)change.getObjectChanges());
                }
                if (this.objectsToAttach != null) {
                    this.objectsToAttach.addAll((Collection)change.getObjectsToAttach());
                }
                if (this.objectsToDetach != null) {
                    this.objectsToDetach.addAll((Collection)change.getObjectsToDetach());
                }
                if (this.resourceChanges != null) {
                    this.resourceChanges.addAll((Collection)change.getResourceChanges());
                }
            }
        }
    }

    private boolean isEmpty(ChangeDescription changeDescription) {
        boolean result;
        boolean bl = result = changeDescription == null;
        if (!result) {
            result = changeDescription instanceof TransactionChangeDescription ? ((TransactionChangeDescription)changeDescription).isEmpty() : changeDescription.getObjectChanges().isEmpty() && changeDescription.getObjectsToAttach().isEmpty() && changeDescription.getResourceChanges().isEmpty();
        }
        return result;
    }

    public EMap<EObject, EList<FeatureChange>> getObjectChanges() {
        if (this.objectChanges == null) {
            this.objectChanges = new BasicEMap();
            for (ChangeDescription next : this.changes) {
                this.objectChanges.addAll((Collection)next.getObjectChanges());
            }
        }
        return this.objectChanges;
    }

    public EList<EObject> getObjectsToDetach() {
        if (this.objectsToDetach == null) {
            this.objectsToDetach = new BasicEList();
            for (ChangeDescription next : this.changes) {
                this.objectsToDetach.addAll((Collection)next.getObjectsToDetach());
            }
        }
        return this.objectsToDetach;
    }

    public EList<EObject> getObjectsToAttach() {
        if (this.objectsToAttach == null) {
            this.objectsToAttach = new BasicEList();
            for (ChangeDescription next : this.changes) {
                this.objectsToAttach.addAll((Collection)next.getObjectsToAttach());
            }
        }
        return this.objectsToAttach;
    }

    public EList<ResourceChange> getResourceChanges() {
        if (this.resourceChanges == null) {
            this.resourceChanges = new BasicEList();
            for (ChangeDescription next : this.changes) {
                this.resourceChanges.addAll((Collection)next.getResourceChanges());
            }
        }
        return this.resourceChanges;
    }

    public String toString() {
        StringBuffer result = new StringBuffer("CompositeChangeDescription[");
        result.append(this.getObjectChanges().size()).append(", ");
        result.append(this.getObjectsToAttach().size()).append(", ");
        result.append(this.getObjectsToDetach().size()).append(", ");
        result.append(this.getResourceChanges().size()).append(']');
        return result.toString();
    }
}

