/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.modeled.model.validation;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.modeled.model.validation.Category;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintBindingsBundle;
import org.eclipse.emf.validation.internal.modeled.model.validation.ConstraintProvider;
import org.eclipse.emf.validation.internal.modeled.model.validation.Parser;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ConstraintsBundle
extends EObject {
    public EList<ConstraintProvider> getProviders();

    public EList<Category> getCategories();

    public EList<ConstraintBindingsBundle> getConstraintBindingsBundles();

    public EList<Parser> getParsers();

    public String getMessageBundlePath();

    public void setMessageBundlePath(String var1);

    public void unsetMessageBundlePath();

    public boolean isSetMessageBundlePath();
}

