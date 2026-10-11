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
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.impl.PaginateableImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryResultChapter;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class MsrQueryChapterImpl
extends PaginateableImpl
implements MsrQueryChapter {
    protected MsrQueryProps msrQueryProps;
    protected MsrQueryResultChapter msrQueryResultChapter;

    protected MsrQueryChapterImpl() {
    }

    protected EClass eStaticClass() {
        return MsrqueryPackage.Literals.MSR_QUERY_CHAPTER;
    }

    public ChapterOrMsrQuery getChapterOrMsrQuery() {
        if (this.eContainerFeatureID() != 8) {
            return null;
        }
        return (ChapterOrMsrQuery)this.eContainer();
    }

    public NotificationChain basicSetChapterOrMsrQuery(ChapterOrMsrQuery newChapterOrMsrQuery, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newChapterOrMsrQuery, 8, msgs);
        return msgs;
    }

    public void setChapterOrMsrQuery(ChapterOrMsrQuery newChapterOrMsrQuery) {
        if (newChapterOrMsrQuery != this.eInternalContainer() || this.eContainerFeatureID() != 8 && newChapterOrMsrQuery != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newChapterOrMsrQuery)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newChapterOrMsrQuery != null) {
                msgs = ((InternalEObject)newChapterOrMsrQuery).eInverseAdd((InternalEObject)this, 6, ChapterOrMsrQuery.class, msgs);
            }
            if ((msgs = this.basicSetChapterOrMsrQuery(newChapterOrMsrQuery, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newChapterOrMsrQuery, (Object)newChapterOrMsrQuery));
        }
    }

    public MsrQueryProps getMsrQueryProps() {
        return this.msrQueryProps;
    }

    public NotificationChain basicSetMsrQueryProps(MsrQueryProps newMsrQueryProps, NotificationChain msgs) {
        MsrQueryProps oldMsrQueryProps = this.msrQueryProps;
        this.msrQueryProps = newMsrQueryProps;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldMsrQueryProps, (Object)newMsrQueryProps);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMsrQueryProps(MsrQueryProps newMsrQueryProps) {
        if (newMsrQueryProps != this.msrQueryProps) {
            NotificationChain msgs = null;
            if (this.msrQueryProps != null) {
                msgs = ((InternalEObject)this.msrQueryProps).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newMsrQueryProps != null) {
                msgs = ((InternalEObject)newMsrQueryProps).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetMsrQueryProps(newMsrQueryProps, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newMsrQueryProps, (Object)newMsrQueryProps));
        }
    }

    public MsrQueryResultChapter getMsrQueryResultChapter() {
        return this.msrQueryResultChapter;
    }

    public NotificationChain basicSetMsrQueryResultChapter(MsrQueryResultChapter newMsrQueryResultChapter, NotificationChain msgs) {
        MsrQueryResultChapter oldMsrQueryResultChapter = this.msrQueryResultChapter;
        this.msrQueryResultChapter = newMsrQueryResultChapter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldMsrQueryResultChapter, (Object)newMsrQueryResultChapter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setMsrQueryResultChapter(MsrQueryResultChapter newMsrQueryResultChapter) {
        if (newMsrQueryResultChapter != this.msrQueryResultChapter) {
            NotificationChain msgs = null;
            if (this.msrQueryResultChapter != null) {
                msgs = ((InternalEObject)this.msrQueryResultChapter).eInverseRemove((InternalEObject)this, 4, MsrQueryResultChapter.class, msgs);
            }
            if (newMsrQueryResultChapter != null) {
                msgs = ((InternalEObject)newMsrQueryResultChapter).eInverseAdd((InternalEObject)this, 4, MsrQueryResultChapter.class, msgs);
            }
            if ((msgs = this.basicSetMsrQueryResultChapter(newMsrQueryResultChapter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newMsrQueryResultChapter, (Object)newMsrQueryResultChapter));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetChapterOrMsrQuery((ChapterOrMsrQuery)otherEnd, msgs);
            }
            case 10: {
                if (this.msrQueryResultChapter != null) {
                    msgs = ((InternalEObject)this.msrQueryResultChapter).eInverseRemove((InternalEObject)this, -11, null, msgs);
                }
                return this.basicSetMsrQueryResultChapter((MsrQueryResultChapter)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 8: {
                return this.basicSetChapterOrMsrQuery(null, msgs);
            }
            case 9: {
                return this.basicSetMsrQueryProps(null, msgs);
            }
            case 10: {
                return this.basicSetMsrQueryResultChapter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 8: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 6, ChapterOrMsrQuery.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 8: {
                return this.getChapterOrMsrQuery();
            }
            case 9: {
                return this.getMsrQueryProps();
            }
            case 10: {
                return this.getMsrQueryResultChapter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 8: {
                this.setChapterOrMsrQuery((ChapterOrMsrQuery)newValue);
                return;
            }
            case 9: {
                this.setMsrQueryProps((MsrQueryProps)newValue);
                return;
            }
            case 10: {
                this.setMsrQueryResultChapter((MsrQueryResultChapter)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 8: {
                this.setChapterOrMsrQuery(null);
                return;
            }
            case 9: {
                this.setMsrQueryProps(null);
                return;
            }
            case 10: {
                this.setMsrQueryResultChapter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 8: {
                return this.getChapterOrMsrQuery() != null;
            }
            case 9: {
                return this.msrQueryProps != null;
            }
            case 10: {
                return this.msrQueryResultChapter != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

