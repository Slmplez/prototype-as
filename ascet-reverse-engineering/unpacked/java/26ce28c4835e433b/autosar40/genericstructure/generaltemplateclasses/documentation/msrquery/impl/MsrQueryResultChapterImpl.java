/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MsrQueryResultChapterImpl
extends ARObjectImpl
implements MsrQueryResultChapter {
    protected EList<Chapter> chapters;

    protected MsrQueryResultChapterImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MsrqueryPackage.Literals.MSR_QUERY_RESULT_CHAPTER;
    }

    @Override
    public MsrQueryChapter getMsrQueryChapter() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (MsrQueryChapter)this.eContainer();
    }

    public NotificationChain basicSetMsrQueryChapter(MsrQueryChapter newMsrQueryChapter, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMsrQueryChapter, 4, msgs);
        return msgs;
    }

    @Override
    public void setMsrQueryChapter(MsrQueryChapter newMsrQueryChapter) {
        if (newMsrQueryChapter != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newMsrQueryChapter != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMsrQueryChapter)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMsrQueryChapter != null) {
                msgs = ((InternalEObject)newMsrQueryChapter).eInverseAdd((InternalEObject)this, 10, MsrQueryChapter.class, msgs);
            }
            if ((msgs = this.basicSetMsrQueryChapter(newMsrQueryChapter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newMsrQueryChapter, (Object)newMsrQueryChapter));
        }
    }

    @Override
    public EList<Chapter> getChapters() {
        if (this.chapters == null) {
            this.chapters = new EObjectContainmentEList(Chapter.class, (InternalEObject)this, 5);
        }
        return this.chapters;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMsrQueryChapter((MsrQueryChapter)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetMsrQueryChapter(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getChapters()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 10, MsrQueryChapter.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMsrQueryChapter();
            }
            case 5: {
                return this.getChapters();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMsrQueryChapter((MsrQueryChapter)newValue);
                return;
            }
            case 5: {
                this.getChapters().clear();
                this.getChapters().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setMsrQueryChapter(null);
                return;
            }
            case 5: {
                this.getChapters().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getMsrQueryChapter() != null;
            }
            case 5: {
                return this.chapters != null && !this.chapters.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

