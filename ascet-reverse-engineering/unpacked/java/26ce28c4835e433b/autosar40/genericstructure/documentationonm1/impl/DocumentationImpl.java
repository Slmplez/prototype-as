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
package autosar40.genericstructure.documentationonm1.impl;

import autosar40.genericstructure.documentationonm1.Documentation;
import autosar40.genericstructure.documentationonm1.DocumentationContext;
import autosar40.genericstructure.documentationonm1.Documentationonm1Package;
import autosar40.genericstructure.generaltemplateclasses.arpackage.impl.ARElementImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.PredefinedChapter;
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
public class DocumentationImpl
extends ARElementImpl
implements Documentation {
    protected EList<DocumentationContext> contexts;
    protected PredefinedChapter documentationContent;

    protected DocumentationImpl() {
    }

    @Override
    protected EClass eStaticClass() {
        return Documentationonm1Package.Literals.DOCUMENTATION;
    }

    @Override
    public EList<DocumentationContext> getContexts() {
        if (this.contexts == null) {
            this.contexts = new EObjectContainmentWithInverseEList(DocumentationContext.class, (InternalEObject)this, 21, 7);
        }
        return this.contexts;
    }

    @Override
    public PredefinedChapter getDocumentationContent() {
        return this.documentationContent;
    }

    public NotificationChain basicSetDocumentationContent(PredefinedChapter newDocumentationContent, NotificationChain msgs) {
        PredefinedChapter oldDocumentationContent = this.documentationContent;
        this.documentationContent = newDocumentationContent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 22, (Object)oldDocumentationContent, (Object)newDocumentationContent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    @Override
    public void setDocumentationContent(PredefinedChapter newDocumentationContent) {
        if (newDocumentationContent != this.documentationContent) {
            NotificationChain msgs = null;
            if (this.documentationContent != null) {
                msgs = ((InternalEObject)this.documentationContent).eInverseRemove((InternalEObject)this, 4, PredefinedChapter.class, msgs);
            }
            if (newDocumentationContent != null) {
                msgs = ((InternalEObject)newDocumentationContent).eInverseAdd((InternalEObject)this, 4, PredefinedChapter.class, msgs);
            }
            if ((msgs = this.basicSetDocumentationContent(newDocumentationContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 22, (Object)newDocumentationContent, (Object)newDocumentationContent));
        }
    }

    @Override
    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getContexts()).basicAdd((Object)otherEnd, msgs);
            }
            case 22: {
                if (this.documentationContent != null) {
                    msgs = ((InternalEObject)this.documentationContent).eInverseRemove((InternalEObject)this, -23, null, msgs);
                }
                return this.basicSetDocumentationContent((PredefinedChapter)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    @Override
    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 21: {
                return ((InternalEList)this.getContexts()).basicRemove((Object)otherEnd, msgs);
            }
            case 22: {
                return this.basicSetDocumentationContent(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    @Override
    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 21: {
                return this.getContexts();
            }
            case 22: {
                return this.getDocumentationContent();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    @Override
    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 21: {
                this.getContexts().clear();
                this.getContexts().addAll((Collection)newValue);
                return;
            }
            case 22: {
                this.setDocumentationContent((PredefinedChapter)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    @Override
    public void eUnset(int featureID) {
        switch (featureID) {
            case 21: {
                this.getContexts().clear();
                return;
            }
            case 22: {
                this.setDocumentationContent(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    @Override
    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 21: {
                return this.contexts != null && !this.contexts.isEmpty();
            }
            case 22: {
                return this.documentationContent != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

