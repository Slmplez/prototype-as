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
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.EcoreUtil
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Topic1;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryTopic1;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TopicOrMsrQueryImpl
extends ARObjectImpl
implements TopicOrMsrQuery {
    protected EList<Topic1> topic1s;
    protected EList<MsrQueryTopic1> msrQueryTopic1s;

    protected TopicOrMsrQueryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ChaptersPackage.Literals.TOPIC_OR_MSR_QUERY;
    }

    @Override
    public ChapterModel getChapterModel() {
        if (this.eContainerFeatureID() != 4) {
            return null;
        }
        return (ChapterModel)this.eContainer();
    }

    public NotificationChain basicSetChapterModel(ChapterModel newChapterModel, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newChapterModel, 4, msgs);
        return msgs;
    }

    @Override
    public void setChapterModel(ChapterModel newChapterModel) {
        if (newChapterModel != this.eInternalContainer() || this.eContainerFeatureID() != 4 && newChapterModel != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newChapterModel)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newChapterModel != null) {
                msgs = ((InternalEObject)newChapterModel).eInverseAdd((InternalEObject)this, 5, ChapterModel.class, msgs);
            }
            if ((msgs = this.basicSetChapterModel(newChapterModel, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newChapterModel, (Object)newChapterModel));
        }
    }

    @Override
    public EList<Topic1> getTopic1s() {
        if (this.topic1s == null) {
            this.topic1s = new EObjectContainmentEList(Topic1.class, (InternalEObject)this, 5);
        }
        return this.topic1s;
    }

    @Override
    public EList<MsrQueryTopic1> getMsrQueryTopic1s() {
        if (this.msrQueryTopic1s == null) {
            this.msrQueryTopic1s = new EObjectContainmentWithInverseEList(MsrQueryTopic1.class, (InternalEObject)this, 6, 8);
        }
        return this.msrQueryTopic1s;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetChapterModel((ChapterModel)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getMsrQueryTopic1s()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetChapterModel(null, msgs);
            }
            case 5: {
                return ((InternalEList)this.getTopic1s()).basicRemove((Object)otherEnd, msgs);
            }
            case 6: {
                return ((InternalEList)this.getMsrQueryTopic1s()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 4: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 5, ChapterModel.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getChapterModel();
            }
            case 5: {
                return this.getTopic1s();
            }
            case 6: {
                return this.getMsrQueryTopic1s();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setChapterModel((ChapterModel)newValue);
                return;
            }
            case 5: {
                this.getTopic1s().clear();
                this.getTopic1s().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.getMsrQueryTopic1s().clear();
                this.getMsrQueryTopic1s().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setChapterModel(null);
                return;
            }
            case 5: {
                this.getTopic1s().clear();
                return;
            }
            case 6: {
                this.getMsrQueryTopic1s().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.getChapterModel() != null;
            }
            case 5: {
                return this.topic1s != null && !this.topic1s.isEmpty();
            }
            case 6: {
                return this.msrQueryTopic1s != null && !this.msrQueryTopic1s.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

