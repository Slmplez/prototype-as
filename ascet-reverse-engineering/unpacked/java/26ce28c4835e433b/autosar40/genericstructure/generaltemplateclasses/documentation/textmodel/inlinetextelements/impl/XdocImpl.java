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
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.InlinetextelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextelements.Xdoc;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlinetextmodel.MixedContentForParagraph;
import autosar40.genericstructure.generaltemplateclasses.identifiable.impl.SingleLanguageReferrableImpl;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesFactory;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.PrimitivetypesPackage;
import javax.xml.datatype.XMLGregorianCalendar;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.util.EcoreUtil;

public class XdocImpl
extends SingleLanguageReferrableImpl
implements Xdoc {
    protected static final String NUMBER_EDEFAULT = "";
    protected String number = "";
    protected boolean numberESet;
    protected static final String STATE_EDEFAULT = "";
    protected String state = "";
    protected boolean stateESet;
    protected static final XMLGregorianCalendar DATE_EDEFAULT = (XMLGregorianCalendar)PrimitivetypesFactory.eINSTANCE.createFromString(PrimitivetypesPackage.eINSTANCE.getDateTime(), "0001-01-01T00:00:00");
    protected XMLGregorianCalendar date = DATE_EDEFAULT;
    protected boolean dateESet;
    protected static final String PUBLISHER_EDEFAULT = "";
    protected String publisher = "";
    protected boolean publisherESet;
    protected Url url;
    protected static final String POSITION_EDEFAULT = "";
    protected String position = "";
    protected boolean positionESet;

    protected XdocImpl() {
    }

    protected EClass eStaticClass() {
        return InlinetextelementsPackage.Literals.XDOC;
    }

    public MixedContentForParagraph getMixedContentForParagraph() {
        if (this.eContainerFeatureID() != 7) {
            return null;
        }
        return (MixedContentForParagraph)this.eContainer();
    }

    public NotificationChain basicSetMixedContentForParagraph(MixedContentForParagraph newMixedContentForParagraph, NotificationChain msgs) {
        msgs = this.eBasicSetContainer((InternalEObject)newMixedContentForParagraph, 7, msgs);
        return msgs;
    }

    public void setMixedContentForParagraph(MixedContentForParagraph newMixedContentForParagraph) {
        if (newMixedContentForParagraph != this.eInternalContainer() || this.eContainerFeatureID() != 7 && newMixedContentForParagraph != null) {
            if (EcoreUtil.isAncestor((EObject)this, (EObject)newMixedContentForParagraph)) {
                throw new IllegalArgumentException("Recursive containment not allowed for " + this.toString());
            }
            NotificationChain msgs = null;
            if (this.eInternalContainer() != null) {
                msgs = this.eBasicRemoveFromContainer(msgs);
            }
            if (newMixedContentForParagraph != null) {
                msgs = ((InternalEObject)newMixedContentForParagraph).eInverseAdd((InternalEObject)this, 15, MixedContentForParagraph.class, msgs);
            }
            if ((msgs = this.basicSetMixedContentForParagraph(newMixedContentForParagraph, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 7, (Object)newMixedContentForParagraph, (Object)newMixedContentForParagraph));
        }
    }

    public String getNumber() {
        return this.number;
    }

    public void setNumber(String newNumber) {
        String oldNumber = this.number;
        this.number = newNumber;
        boolean oldNumberESet = this.numberESet;
        this.numberESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 8, (Object)oldNumber, (Object)this.number, !oldNumberESet));
        }
    }

    public void unsetNumber() {
        String oldNumber = this.number;
        boolean oldNumberESet = this.numberESet;
        this.number = "";
        this.numberESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 8, (Object)oldNumber, (Object)"", oldNumberESet));
        }
    }

    public boolean isSetNumber() {
        return this.numberESet;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String newState) {
        String oldState = this.state;
        this.state = newState;
        boolean oldStateESet = this.stateESet;
        this.stateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 9, (Object)oldState, (Object)this.state, !oldStateESet));
        }
    }

    public void unsetState() {
        String oldState = this.state;
        boolean oldStateESet = this.stateESet;
        this.state = "";
        this.stateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 9, (Object)oldState, (Object)"", oldStateESet));
        }
    }

    public boolean isSetState() {
        return this.stateESet;
    }

    public XMLGregorianCalendar getDate() {
        return this.date;
    }

    public void setDate(XMLGregorianCalendar newDate) {
        XMLGregorianCalendar oldDate = this.date;
        this.date = newDate;
        boolean oldDateESet = this.dateESet;
        this.dateESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 10, (Object)oldDate, (Object)this.date, !oldDateESet));
        }
    }

    public void unsetDate() {
        XMLGregorianCalendar oldDate = this.date;
        boolean oldDateESet = this.dateESet;
        this.date = DATE_EDEFAULT;
        this.dateESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 10, (Object)oldDate, (Object)DATE_EDEFAULT, oldDateESet));
        }
    }

    public boolean isSetDate() {
        return this.dateESet;
    }

    public String getPublisher() {
        return this.publisher;
    }

    public void setPublisher(String newPublisher) {
        String oldPublisher = this.publisher;
        this.publisher = newPublisher;
        boolean oldPublisherESet = this.publisherESet;
        this.publisherESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 11, (Object)oldPublisher, (Object)this.publisher, !oldPublisherESet));
        }
    }

    public void unsetPublisher() {
        String oldPublisher = this.publisher;
        boolean oldPublisherESet = this.publisherESet;
        this.publisher = "";
        this.publisherESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 11, (Object)oldPublisher, (Object)"", oldPublisherESet));
        }
    }

    public boolean isSetPublisher() {
        return this.publisherESet;
    }

    public Url getUrl() {
        return this.url;
    }

    public NotificationChain basicSetUrl(Url newUrl, NotificationChain msgs) {
        Url oldUrl = this.url;
        this.url = newUrl;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 12, (Object)oldUrl, (Object)newUrl);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setUrl(Url newUrl) {
        if (newUrl != this.url) {
            NotificationChain msgs = null;
            if (this.url != null) {
                msgs = ((InternalEObject)this.url).eInverseRemove((InternalEObject)this, -13, null, msgs);
            }
            if (newUrl != null) {
                msgs = ((InternalEObject)newUrl).eInverseAdd((InternalEObject)this, -13, null, msgs);
            }
            if ((msgs = this.basicSetUrl(newUrl, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 12, (Object)newUrl, (Object)newUrl));
        }
    }

    public String getPosition() {
        return this.position;
    }

    public void setPosition(String newPosition) {
        String oldPosition = this.position;
        this.position = newPosition;
        boolean oldPositionESet = this.positionESet;
        this.positionESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 13, (Object)oldPosition, (Object)this.position, !oldPositionESet));
        }
    }

    public void unsetPosition() {
        String oldPosition = this.position;
        boolean oldPositionESet = this.positionESet;
        this.position = "";
        this.positionESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 13, (Object)oldPosition, (Object)"", oldPositionESet));
        }
    }

    public boolean isSetPosition() {
        return this.positionESet;
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                if (this.eInternalContainer() != null) {
                    msgs = this.eBasicRemoveFromContainer(msgs);
                }
                return this.basicSetMixedContentForParagraph((MixedContentForParagraph)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 7: {
                return this.basicSetMixedContentForParagraph(null, msgs);
            }
            case 12: {
                return this.basicSetUrl(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public NotificationChain eBasicRemoveFromContainerFeature(NotificationChain msgs) {
        switch (this.eContainerFeatureID()) {
            case 7: {
                return this.eInternalContainer().eInverseRemove((InternalEObject)this, 15, MixedContentForParagraph.class, msgs);
            }
        }
        return super.eBasicRemoveFromContainerFeature(msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 7: {
                return this.getMixedContentForParagraph();
            }
            case 8: {
                return this.getNumber();
            }
            case 9: {
                return this.getState();
            }
            case 10: {
                return this.getDate();
            }
            case 11: {
                return this.getPublisher();
            }
            case 12: {
                return this.getUrl();
            }
            case 13: {
                return this.getPosition();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 7: {
                this.setMixedContentForParagraph((MixedContentForParagraph)newValue);
                return;
            }
            case 8: {
                this.setNumber((String)newValue);
                return;
            }
            case 9: {
                this.setState((String)newValue);
                return;
            }
            case 10: {
                this.setDate((XMLGregorianCalendar)newValue);
                return;
            }
            case 11: {
                this.setPublisher((String)newValue);
                return;
            }
            case 12: {
                this.setUrl((Url)newValue);
                return;
            }
            case 13: {
                this.setPosition((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 7: {
                this.setMixedContentForParagraph(null);
                return;
            }
            case 8: {
                this.unsetNumber();
                return;
            }
            case 9: {
                this.unsetState();
                return;
            }
            case 10: {
                this.unsetDate();
                return;
            }
            case 11: {
                this.unsetPublisher();
                return;
            }
            case 12: {
                this.setUrl(null);
                return;
            }
            case 13: {
                this.unsetPosition();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 7: {
                return this.getMixedContentForParagraph() != null;
            }
            case 8: {
                return this.isSetNumber();
            }
            case 9: {
                return this.isSetState();
            }
            case 10: {
                return this.isSetDate();
            }
            case 11: {
                return this.isSetPublisher();
            }
            case 12: {
                return this.url != null;
            }
            case 13: {
                return this.isSetPosition();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (number: ");
        if (this.numberESet) {
            result.append(this.number);
        } else {
            result.append("<unset>");
        }
        result.append(", state: ");
        if (this.stateESet) {
            result.append(this.state);
        } else {
            result.append("<unset>");
        }
        result.append(", date: ");
        if (this.dateESet) {
            result.append(this.date);
        } else {
            result.append("<unset>");
        }
        result.append(", publisher: ");
        if (this.publisherESet) {
            result.append(this.publisher);
        } else {
            result.append("<unset>");
        }
        result.append(", position: ");
        if (this.positionESet) {
            result.append(this.position);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

