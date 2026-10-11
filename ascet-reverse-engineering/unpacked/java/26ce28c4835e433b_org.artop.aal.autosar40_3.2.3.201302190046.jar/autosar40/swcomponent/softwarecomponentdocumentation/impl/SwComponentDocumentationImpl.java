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
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package autosar40.swcomponent.softwarecomponentdocumentation.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.Chapter;
import autosar40.genericstructure.varianthandling.VariationPoint;
import autosar40.swcomponent.softwarecomponentdocumentation.SoftwarecomponentdocumentationPackage;
import autosar40.swcomponent.softwarecomponentdocumentation.SwComponentDocumentation;
import java.util.Collection;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class SwComponentDocumentationImpl
extends ARObjectImpl
implements SwComponentDocumentation {
    protected Chapter swFeatureDef;
    protected Chapter swFeatureDesc;
    protected Chapter swTestDesc;
    protected Chapter swCalibrationNotes;
    protected Chapter swMaintenanceNotes;
    protected Chapter swDiagnosticsNotes;
    protected Chapter swCarbDoc;
    protected EList<Chapter> chapters;
    protected VariationPoint variationPoint;

    protected SwComponentDocumentationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return SoftwarecomponentdocumentationPackage.Literals.SW_COMPONENT_DOCUMENTATION;
    }

    @Override
    public Chapter getSwFeatureDef() {
        return this.swFeatureDef;
    }

    public NotificationChain basicSetSwFeatureDef(Chapter newSwFeatureDef, NotificationChain msgs) {
        Chapter oldSwFeatureDef = this.swFeatureDef;
        this.swFeatureDef = newSwFeatureDef;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldSwFeatureDef, (Object)newSwFeatureDef);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwFeatureDef(Chapter newSwFeatureDef) {
        if (newSwFeatureDef != this.swFeatureDef) {
            NotificationChain msgs = null;
            if (this.swFeatureDef != null) {
                msgs = ((InternalEObject)this.swFeatureDef).eInverseRemove((InternalEObject)this, -5, null, msgs);
            }
            if (newSwFeatureDef != null) {
                msgs = ((InternalEObject)newSwFeatureDef).eInverseAdd((InternalEObject)this, -5, null, msgs);
            }
            if ((msgs = this.basicSetSwFeatureDef(newSwFeatureDef, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newSwFeatureDef, (Object)newSwFeatureDef));
        }
    }

    @Override
    public Chapter getSwFeatureDesc() {
        return this.swFeatureDesc;
    }

    public NotificationChain basicSetSwFeatureDesc(Chapter newSwFeatureDesc, NotificationChain msgs) {
        Chapter oldSwFeatureDesc = this.swFeatureDesc;
        this.swFeatureDesc = newSwFeatureDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldSwFeatureDesc, (Object)newSwFeatureDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwFeatureDesc(Chapter newSwFeatureDesc) {
        if (newSwFeatureDesc != this.swFeatureDesc) {
            NotificationChain msgs = null;
            if (this.swFeatureDesc != null) {
                msgs = ((InternalEObject)this.swFeatureDesc).eInverseRemove((InternalEObject)this, -6, null, msgs);
            }
            if (newSwFeatureDesc != null) {
                msgs = ((InternalEObject)newSwFeatureDesc).eInverseAdd((InternalEObject)this, -6, null, msgs);
            }
            if ((msgs = this.basicSetSwFeatureDesc(newSwFeatureDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newSwFeatureDesc, (Object)newSwFeatureDesc));
        }
    }

    @Override
    public Chapter getSwTestDesc() {
        return this.swTestDesc;
    }

    public NotificationChain basicSetSwTestDesc(Chapter newSwTestDesc, NotificationChain msgs) {
        Chapter oldSwTestDesc = this.swTestDesc;
        this.swTestDesc = newSwTestDesc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldSwTestDesc, (Object)newSwTestDesc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwTestDesc(Chapter newSwTestDesc) {
        if (newSwTestDesc != this.swTestDesc) {
            NotificationChain msgs = null;
            if (this.swTestDesc != null) {
                msgs = ((InternalEObject)this.swTestDesc).eInverseRemove((InternalEObject)this, -7, null, msgs);
            }
            if (newSwTestDesc != null) {
                msgs = ((InternalEObject)newSwTestDesc).eInverseAdd((InternalEObject)this, -7, null, msgs);
            }
            if ((msgs = this.basicSetSwTestDesc(newSwTestDesc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newSwTestDesc, (Object)newSwTestDesc));
        }
    }

    @Override
    public Chapter getSwCalibrationNotes() {
        return this.swCalibrationNotes;
    }

    public NotificationChain basicSetSwCalibrationNotes(Chapter newSwCalibrationNotes, NotificationChain msgs) {
        Chapter oldSwCalibrationNotes = this.swCalibrationNotes;
        this.swCalibrationNotes = newSwCalibrationNotes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 7, (Object)oldSwCalibrationNotes, (Object)newSwCalibrationNotes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwCalibrationNotes(Chapter newSwCalibrationNotes) {
        if (newSwCalibrationNotes != this.swCalibrationNotes) {
            NotificationChain msgs = null;
            if (this.swCalibrationNotes != null) {
                msgs = ((InternalEObject)this.swCalibrationNotes).eInverseRemove((InternalEObject)this, -8, null, msgs);
            }
            if (newSwCalibrationNotes != null) {
                msgs = ((InternalEObject)newSwCalibrationNotes).eInverseAdd((InternalEObject)this, -8, null, msgs);
            }
            if ((msgs = this.basicSetSwCalibrationNotes(newSwCalibrationNotes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newSwCalibrationNotes, (Object)newSwCalibrationNotes));
        }
    }

    @Override
    public Chapter getSwMaintenanceNotes() {
        return this.swMaintenanceNotes;
    }

    public NotificationChain basicSetSwMaintenanceNotes(Chapter newSwMaintenanceNotes, NotificationChain msgs) {
        Chapter oldSwMaintenanceNotes = this.swMaintenanceNotes;
        this.swMaintenanceNotes = newSwMaintenanceNotes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldSwMaintenanceNotes, (Object)newSwMaintenanceNotes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwMaintenanceNotes(Chapter newSwMaintenanceNotes) {
        if (newSwMaintenanceNotes != this.swMaintenanceNotes) {
            NotificationChain msgs = null;
            if (this.swMaintenanceNotes != null) {
                msgs = ((InternalEObject)this.swMaintenanceNotes).eInverseRemove((InternalEObject)this, -9, null, msgs);
            }
            if (newSwMaintenanceNotes != null) {
                msgs = ((InternalEObject)newSwMaintenanceNotes).eInverseAdd((InternalEObject)this, -9, null, msgs);
            }
            if ((msgs = this.basicSetSwMaintenanceNotes(newSwMaintenanceNotes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)newSwMaintenanceNotes, (Object)newSwMaintenanceNotes));
        }
    }

    @Override
    public Chapter getSwDiagnosticsNotes() {
        return this.swDiagnosticsNotes;
    }

    public NotificationChain basicSetSwDiagnosticsNotes(Chapter newSwDiagnosticsNotes, NotificationChain msgs) {
        Chapter oldSwDiagnosticsNotes = this.swDiagnosticsNotes;
        this.swDiagnosticsNotes = newSwDiagnosticsNotes;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldSwDiagnosticsNotes, (Object)newSwDiagnosticsNotes);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwDiagnosticsNotes(Chapter newSwDiagnosticsNotes) {
        if (newSwDiagnosticsNotes != this.swDiagnosticsNotes) {
            NotificationChain msgs = null;
            if (this.swDiagnosticsNotes != null) {
                msgs = ((InternalEObject)this.swDiagnosticsNotes).eInverseRemove((InternalEObject)this, -10, null, msgs);
            }
            if (newSwDiagnosticsNotes != null) {
                msgs = ((InternalEObject)newSwDiagnosticsNotes).eInverseAdd((InternalEObject)this, -10, null, msgs);
            }
            if ((msgs = this.basicSetSwDiagnosticsNotes(newSwDiagnosticsNotes, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)newSwDiagnosticsNotes, (Object)newSwDiagnosticsNotes));
        }
    }

    @Override
    public Chapter getSwCarbDoc() {
        return this.swCarbDoc;
    }

    public NotificationChain basicSetSwCarbDoc(Chapter newSwCarbDoc, NotificationChain msgs) {
        Chapter oldSwCarbDoc = this.swCarbDoc;
        this.swCarbDoc = newSwCarbDoc;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldSwCarbDoc, (Object)newSwCarbDoc);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setSwCarbDoc(Chapter newSwCarbDoc) {
        if (newSwCarbDoc != this.swCarbDoc) {
            NotificationChain msgs = null;
            if (this.swCarbDoc != null) {
                msgs = ((InternalEObject)this.swCarbDoc).eInverseRemove((InternalEObject)this, -11, null, msgs);
            }
            if (newSwCarbDoc != null) {
                msgs = ((InternalEObject)newSwCarbDoc).eInverseAdd((InternalEObject)this, -11, null, msgs);
            }
            if ((msgs = this.basicSetSwCarbDoc(newSwCarbDoc, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)newSwCarbDoc, (Object)newSwCarbDoc));
        }
    }

    @Override
    public EList<Chapter> getChapters() {
        if (this.chapters == null) {
            this.chapters = new EObjectContainmentEList(Chapter.class, (InternalEObject)this, 11);
        }
        return this.chapters;
    }

    @Override
    public VariationPoint getVariationPoint() {
        return this.variationPoint;
    }

    public NotificationChain basicSetVariationPoint(VariationPoint newVariationPoint, NotificationChain msgs) {
        VariationPoint oldVariationPoint = this.variationPoint;
        this.variationPoint = newVariationPoint;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldVariationPoint, (Object)newVariationPoint);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setVariationPoint(VariationPoint newVariationPoint) {
        if (newVariationPoint != this.variationPoint) {
            NotificationChain msgs = null;
            if (this.variationPoint != null) {
                msgs = ((InternalEObject)this.variationPoint).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newVariationPoint != null) {
                msgs = ((InternalEObject)newVariationPoint).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetVariationPoint(newVariationPoint, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newVariationPoint, (Object)newVariationPoint));
        }
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetSwFeatureDef(null, msgs);
            }
            case 5: {
                return this.basicSetSwFeatureDesc(null, msgs);
            }
            case 6: {
                return this.basicSetSwTestDesc(null, msgs);
            }
            case 7: {
                return this.basicSetSwCalibrationNotes(null, msgs);
            }
            case 8: {
                return this.basicSetSwMaintenanceNotes(null, msgs);
            }
            case 9: {
                return this.basicSetSwDiagnosticsNotes(null, msgs);
            }
            case 10: {
                return this.basicSetSwCarbDoc(null, msgs);
            }
            case 11: {
                return ((InternalEList)this.getChapters()).basicRemove((Object)otherEnd, msgs);
            }
            case 12: {
                return this.basicSetVariationPoint(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getSwFeatureDef();
            }
            case 5: {
                return this.getSwFeatureDesc();
            }
            case 6: {
                return this.getSwTestDesc();
            }
            case 7: {
                return this.getSwCalibrationNotes();
            }
            case 8: {
                return this.getSwMaintenanceNotes();
            }
            case 9: {
                return this.getSwDiagnosticsNotes();
            }
            case 10: {
                return this.getSwCarbDoc();
            }
            case 11: {
                return this.getChapters();
            }
            case 12: {
                return this.getVariationPoint();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setSwFeatureDef((Chapter)newValue);
                return;
            }
            case 5: {
                this.setSwFeatureDesc((Chapter)newValue);
                return;
            }
            case 6: {
                this.setSwTestDesc((Chapter)newValue);
                return;
            }
            case 7: {
                this.setSwCalibrationNotes((Chapter)newValue);
                return;
            }
            case 8: {
                this.setSwMaintenanceNotes((Chapter)newValue);
                return;
            }
            case 9: {
                this.setSwDiagnosticsNotes((Chapter)newValue);
                return;
            }
            case 10: {
                this.setSwCarbDoc((Chapter)newValue);
                return;
            }
            case 11: {
                this.getChapters().clear();
                this.getChapters().addAll((Collection)newValue);
                return;
            }
            case 12: {
                this.setVariationPoint((VariationPoint)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setSwFeatureDef(null);
                return;
            }
            case 5: {
                this.setSwFeatureDesc(null);
                return;
            }
            case 6: {
                this.setSwTestDesc(null);
                return;
            }
            case 7: {
                this.setSwCalibrationNotes(null);
                return;
            }
            case 8: {
                this.setSwMaintenanceNotes(null);
                return;
            }
            case 9: {
                this.setSwDiagnosticsNotes(null);
                return;
            }
            case 10: {
                this.setSwCarbDoc(null);
                return;
            }
            case 11: {
                this.getChapters().clear();
                return;
            }
            case 12: {
                this.setVariationPoint(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.swFeatureDef != null;
            }
            case 5: {
                return this.swFeatureDesc != null;
            }
            case 6: {
                return this.swTestDesc != null;
            }
            case 7: {
                return this.swCalibrationNotes != null;
            }
            case 8: {
                return this.swMaintenanceNotes != null;
            }
            case 9: {
                return this.swDiagnosticsNotes != null;
            }
            case 10: {
                return this.swCarbDoc != null;
            }
            case 11: {
                return this.chapters != null && !this.chapters.isEmpty();
            }
            case 12: {
                return this.variationPoint != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

