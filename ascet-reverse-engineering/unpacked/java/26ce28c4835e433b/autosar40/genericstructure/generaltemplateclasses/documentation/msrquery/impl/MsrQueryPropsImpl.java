/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryArg;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrqueryPackage;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentWithInverseEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MsrQueryPropsImpl
extends ARObjectImpl
implements MsrQueryProps {
    protected static final String MSR_QUERY_NAME_EDEFAULT = "";
    protected String msrQueryName = "";
    protected boolean msrQueryNameESet;
    protected EList<MsrQueryArg> msrQueryArgs;
    protected static final String COMMENT_EDEFAULT = "";
    protected String comment = "";
    protected boolean commentESet;

    protected MsrQueryPropsImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return MsrqueryPackage.Literals.MSR_QUERY_PROPS;
    }

    @Override
    public String getMsrQueryName() {
        return this.msrQueryName;
    }

    @Override
    public void setMsrQueryName(String newMsrQueryName) {
        String oldMsrQueryName = this.msrQueryName;
        this.msrQueryName = newMsrQueryName;
        boolean oldMsrQueryNameESet = this.msrQueryNameESet;
        this.msrQueryNameESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMsrQueryName, (Object)this.msrQueryName, !oldMsrQueryNameESet));
        }
    }

    @Override
    public void unsetMsrQueryName() {
        String oldMsrQueryName = this.msrQueryName;
        boolean oldMsrQueryNameESet = this.msrQueryNameESet;
        this.msrQueryName = "";
        this.msrQueryNameESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldMsrQueryName, (Object)"", oldMsrQueryNameESet));
        }
    }

    @Override
    public boolean isSetMsrQueryName() {
        return this.msrQueryNameESet;
    }

    @Override
    public EList<MsrQueryArg> getMsrQueryArgs() {
        if (this.msrQueryArgs == null) {
            this.msrQueryArgs = new EObjectContainmentWithInverseEList(MsrQueryArg.class, (InternalEObject)this, 5, 4);
        }
        return this.msrQueryArgs;
    }

    @Override
    public String getComment() {
        return this.comment;
    }

    @Override
    public void setComment(String newComment) {
        String oldComment = this.comment;
        this.comment = newComment;
        boolean oldCommentESet = this.commentESet;
        this.commentESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldComment, (Object)this.comment, !oldCommentESet));
        }
    }

    @Override
    public void unsetComment() {
        String oldComment = this.comment;
        boolean oldCommentESet = this.commentESet;
        this.comment = "";
        this.commentESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 6, (Object)oldComment, (Object)"", oldCommentESet));
        }
    }

    @Override
    public boolean isSetComment() {
        return this.commentESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getMsrQueryArgs()).basicAdd((Object)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 5: {
                return ((InternalEList)this.getMsrQueryArgs()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getMsrQueryName();
            }
            case 5: {
                return this.getMsrQueryArgs();
            }
            case 6: {
                return this.getComment();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setMsrQueryName((String)newValue);
                return;
            }
            case 5: {
                this.getMsrQueryArgs().clear();
                this.getMsrQueryArgs().addAll((Collection)newValue);
                return;
            }
            case 6: {
                this.setComment((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.unsetMsrQueryName();
                return;
            }
            case 5: {
                this.getMsrQueryArgs().clear();
                return;
            }
            case 6: {
                this.unsetComment();
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.isSetMsrQueryName();
            }
            case 5: {
                return this.msrQueryArgs != null && !this.msrQueryArgs.isEmpty();
            }
            case 6: {
                return this.isSetComment();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (msrQueryName: ");
        if (this.msrQueryNameESet) {
            result.append(this.msrQueryName);
        } else {
            result.append("<unset>");
        }
        result.append(", comment: ");
        if (this.commentESet) {
            result.append(this.comment);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

