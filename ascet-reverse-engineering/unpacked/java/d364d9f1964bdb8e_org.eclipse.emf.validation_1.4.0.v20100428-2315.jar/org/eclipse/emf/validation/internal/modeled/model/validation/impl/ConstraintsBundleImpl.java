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
 *  org.eclipse.emf.ecore.impl.EObjectImpl
 *  org.eclipse.emf.ecore.util.EObjectContainmentEList
 *  org.eclipse.emf.ecore.util.InternalEList
 */
package org.eclipse.emf.validation.internal.modeled.model.validation.impl;

import java.util.Collection;
import java.util.Properties;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.EObjectImpl;
import org.eclipse.emf.ecore.util.EObjectContainmentEList;
import org.eclipse.emf.ecore.util.InternalEList;
import org.eclipse.emf.validation.internal.modeled.model.validation.Category;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintBindingsBundle;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintProvider;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintsBundle;
import org.eclipse.emf.validation.internal.modeled.model.validation.Parser;
import org.eclipse.emf.validation.internal.modeled.model.validation.ValidationPackage;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class ConstraintsBundleImpl
extends EObjectImpl
implements ConstraintsBundle {
    protected EList<ConstraintProvider> providers;
    protected EList<Category> categories;
    protected EList<ConstraintBindingsBundle> constraintBindingsBundles;
    protected EList<Parser> parsers;
    protected static final String MESSAGE_BUNDLE_PATH_EDEFAULT = null;
    protected String messageBundlePath = MESSAGE_BUNDLE_PATH_EDEFAULT;
    protected boolean messageBundlePathESet;
    private Properties messageBundle = null;

    protected ConstraintsBundleImpl() {
    }

    protected EClass eStaticClass() {
        return ValidationPackage.Literals.CONSTRAINTS_BUNDLE;
    }

    @Override
    public EList<ConstraintProvider> getProviders() {
        if (this.providers == null) {
            this.providers = new EObjectContainmentEList(ConstraintProvider.class, (InternalEObject)this, 0);
        }
        return this.providers;
    }

    @Override
    public EList<Category> getCategories() {
        if (this.categories == null) {
            this.categories = new EObjectContainmentEList(Category.class, (InternalEObject)this, 1);
        }
        return this.categories;
    }

    @Override
    public EList<ConstraintBindingsBundle> getConstraintBindingsBundles() {
        if (this.constraintBindingsBundles == null) {
            this.constraintBindingsBundles = new EObjectContainmentEList(ConstraintBindingsBundle.class, (InternalEObject)this, 2);
        }
        return this.constraintBindingsBundles;
    }

    @Override
    public EList<Parser> getParsers() {
        if (this.parsers == null) {
            this.parsers = new EObjectContainmentEList(Parser.class, (InternalEObject)this, 3);
        }
        return this.parsers;
    }

    @Override
    public String getMessageBundlePath() {
        return this.messageBundlePath;
    }

    @Override
    public void setMessageBundlePath(String newMessageBundlePath) {
        String oldMessageBundlePath = this.messageBundlePath;
        this.messageBundlePath = newMessageBundlePath;
        boolean oldMessageBundlePathESet = this.messageBundlePathESet;
        this.messageBundlePathESet = true;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldMessageBundlePath, (Object)this.messageBundlePath, !oldMessageBundlePathESet));
        }
    }

    @Override
    public void unsetMessageBundlePath() {
        String oldMessageBundlePath = this.messageBundlePath;
        boolean oldMessageBundlePathESet = this.messageBundlePathESet;
        this.messageBundlePath = MESSAGE_BUNDLE_PATH_EDEFAULT;
        this.messageBundlePathESet = false;
        if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 2, 4, (Object)oldMessageBundlePath, (Object)MESSAGE_BUNDLE_PATH_EDEFAULT, oldMessageBundlePathESet));
        }
    }

    @Override
    public boolean isSetMessageBundlePath() {
        return this.messageBundlePathESet;
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 0: {
                return ((InternalEList)this.getProviders()).basicRemove((Object)otherEnd, msgs);
            }
            case 1: {
                return ((InternalEList)this.getCategories()).basicRemove((Object)otherEnd, msgs);
            }
            case 2: {
                return ((InternalEList)this.getConstraintBindingsBundles()).basicRemove((Object)otherEnd, msgs);
            }
            case 3: {
                return ((InternalEList)this.getParsers()).basicRemove((Object)otherEnd, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 0: {
                return this.getProviders();
            }
            case 1: {
                return this.getCategories();
            }
            case 2: {
                return this.getConstraintBindingsBundles();
            }
            case 3: {
                return this.getParsers();
            }
            case 4: {
                return this.getMessageBundlePath();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 0: {
                this.getProviders().clear();
                this.getProviders().addAll((Collection)newValue);
                return;
            }
            case 1: {
                this.getCategories().clear();
                this.getCategories().addAll((Collection)newValue);
                return;
            }
            case 2: {
                this.getConstraintBindingsBundles().clear();
                this.getConstraintBindingsBundles().addAll((Collection)newValue);
                return;
            }
            case 3: {
                this.getParsers().clear();
                this.getParsers().addAll((Collection)newValue);
                return;
            }
            case 4: {
                this.setMessageBundlePath((String)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 0: {
                this.getProviders().clear();
                return;
            }
            case 1: {
                this.getCategories().clear();
                return;
            }
            case 2: {
                this.getConstraintBindingsBundles().clear();
                return;
            }
            case 3: {
                this.getParsers().clear();
                return;
            }
            case 4: {
                this.unsetMessageBundlePath();
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 0: {
                return this.providers != null && !this.providers.isEmpty();
            }
            case 1: {
                return this.categories != null && !this.categories.isEmpty();
            }
            case 2: {
                return this.constraintBindingsBundles != null && !this.constraintBindingsBundles.isEmpty();
            }
            case 3: {
                return this.parsers != null && !this.parsers.isEmpty();
            }
            case 4: {
                return this.isSetMessageBundlePath();
            }
        }
        return super.eIsSet(featureID);
    }

    public String toString() {
        if (this.eIsProxy()) {
            return super.toString();
        }
        StringBuffer result = new StringBuffer(super.toString());
        result.append(" (messageBundlePath: ");
        if (this.messageBundlePathESet) {
            result.append(this.messageBundlePath);
        } else {
            result.append("<unset>");
        }
        result.append(')');
        return result.toString();
    }
}

