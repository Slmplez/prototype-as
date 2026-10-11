/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EcoreUtil
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl;

import autosar40.genericstructure.documentationonm1.Documentation;
import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.PredefinedChapter;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class PredefinedChapterImpl
extends ARObjectImpl
implements PredefinedChapter {
    protected ChapterModel chapterModel;

    protected PredefinedChapterImpl() {
    }

    protected EClass eStaticClass() {
        return ChaptersPackage.Literals.PREDEFINED_CHAPTER;
    }

    public Documentation getDocumentation() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (Documentation)this.eContainer();
    }

    public NotificationChain basicSetDocumentation(Documentation newDocumentation, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newDocumentation, 4, msgs);
        return msgs;
    }

    public void setDocumentation(Documentation newDocumentation) {
        if (newDocumentation != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newDocumentation != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newDocumentation)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newDocumentation != null) {
                msgs = ((InternalEObject)newDocumentation).eInverseAdd((InternalEObject)this, 22, Documentation.class, msgs);
            }
            if ((msgs = this.basicSetDocumentation(newDocumentation, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newDocumentation, (Object)newDocumentation));
        }
    }

    public ChapterModel getChapterModel() {
        return this.chapterModel;
    }

    public NotificationChain basicSetChapterModel(ChapterModel newChapterModel, NotificationChain msgs) {
        ChapterModel oldChapterModel = this.chapterModel;
        this.chapterModel = newChapterModel;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldChapterModel, (Object)newChapterModel);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setChapterModel(ChapterModel newChapterModel) {
        if (newChapterModel != this.chapterModel) {
            NotificationChain msgs = null;
            if (this.chapterModel != null) {
                msgs = ((InternalEObject)this.chapterModel).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newChapterModel != null) {
                msgs = ((InternalEObject)newChapterModel).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetChapterModel(newChapterModel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newChapterModel, (Object)newChapterModel));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetDocumentation((Documentation)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetDocumentation(null, msgs);
            }
            case 5: {
                return this.basicSetChapterModel(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 22, Documentation.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getDocumentation();
            }
            case 5: {
                return this.getChapterModel();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setDocumentation((Documentation)newValue);
                return;
            }
            case 5: {
                this.setChapterModel((ChapterModel)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setDocumentation(null);
                return;
            }
            case 5: {
                this.setChapterModel(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getDocumentation() != null;
            }
            case 5: {
                return this.chapterModel != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

