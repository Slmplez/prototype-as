/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContentOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryP1;
import java.util.Collection;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class TopicContentOrMsrQueryImpl
extends ARObjectImpl
implements TopicContentOrMsrQuery {
    protected EList<MsrQueryP1> msrQueryP1s;
    protected EList<TopicContent> topicContents;

    protected TopicContentOrMsrQueryImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return ChaptersPackage.Literals.TOPIC_CONTENT_OR_MSR_QUERY;
    }

    @Override
    public EList<MsrQueryP1> getMsrQueryP1s() {
        if (this.msrQueryP1s == null) {
            this.msrQueryP1s = new EObjectContainmentWithInverseEList(MsrQueryP1.class, (InternalEObject)this, 4, 8);
        }
        return this.msrQueryP1s;
    }

    @Override
    public EList<TopicContent> getTopicContents() {
        if (this.topicContents == null) {
            this.topicContents = new EObjectContainmentEList(TopicContent.class, (InternalEObject)this, 5);
        }
        return this.topicContents;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getMsrQueryP1s()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return ((InternalEList)this.getMsrQueryP1s()).basicRemove((Object)otherEnd, msgs);
            }
            case 5: {
                return ((InternalEList)this.getTopicContents()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMsrQueryP1s();
            }
            case 5: {
                return this.getTopicContents();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.getMsrQueryP1s().clear();
                this.getMsrQueryP1s().addAll((Collection)newValue);
                return;
            }
            case 5: {
                this.getTopicContents().clear();
                this.getTopicContents().addAll((Collection)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.getMsrQueryP1s().clear();
                return;
            }
            case 5: {
                this.getTopicContents().clear();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.msrQueryP1s != null && !this.msrQueryP1s.isEmpty();
            }
            case 5: {
                return this.topicContents != null && !this.topicContents.isEmpty();
            }
        }
        return super.eIsSet(featureID);
    }
}

