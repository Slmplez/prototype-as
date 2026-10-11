/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectResolvingEList
 */
package org.artop.aal.common.util;

import org.artop.aal.common.util.AutosarObjectUtil;
import org.artop.aal.common.util.IReferringEList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectResolvingEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class EObjectResolvingReferringEList<E>
extends EObjectResolvingEList<E>
implements IReferringEList<E> {
    private static final long serialVersionUID = 1L;
    private boolean inResolve = false;

    public EObjectResolvingReferringEList(Class<?> dataClass, InternalEObject owner, int featureID) {
        super(dataClass, owner, featureID);
    }

    @Override
    public void setReferringDest(int index, String dest) {
        AutosarObjectUtil.setDest((EObject)this.owner, this.featureID, index, dest);
    }

    @Override
    public String getReferringDest(int index) {
        return AutosarObjectUtil.getDest((EObject)this.owner, this.featureID, index);
    }

    protected void didClear(int size, Object[] oldObjects) {
        if (oldObjects != null) {
            int i = 0;
            while (i < size) {
                this.setReferringDest(i, null);
                ++i;
            }
        }
    }

    protected void didSet(int index, E newObject, E oldObject) {
        if (!this.inResolve) {
            this.setReferringDest(index, null);
        }
    }

    protected void didAdd(int index, E newObject) {
        AutosarObjectUtil.shiftDestUp((EObject)this.owner, this.featureID, index, this.size() - 1);
    }

    protected void didRemove(int index, E oldObject) {
        this.setReferringDest(index, null);
        AutosarObjectUtil.shiftDestDown((EObject)this.owner, this.featureID, index + 1, this.size() - 1);
    }

    protected void didMove(int newIndex, E movedObject, int oldIndex) {
        if (newIndex != oldIndex) {
            String dest = this.getReferringDest(oldIndex);
            if (dest != null) {
                this.setReferringDest(oldIndex, null);
            }
            if (oldIndex > newIndex) {
                AutosarObjectUtil.shiftDestUp((EObject)this.owner, this.featureID, newIndex, oldIndex - 1);
            } else {
                AutosarObjectUtil.shiftDestDown((EObject)this.owner, this.featureID, oldIndex + 1, newIndex);
            }
            if (dest != null) {
                this.setReferringDest(newIndex, dest);
            }
        }
    }

    protected EObject resolve(int index, EObject eObject) {
        this.inResolve = true;
        try {
            EObject eObject2 = super.resolve(index, eObject);
            return eObject2;
        }
        finally {
            this.inResolve = false;
        }
    }
}

