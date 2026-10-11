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

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Category
extends EObject {
    public EList<Category> getSubCategories();

    public String getId();

    public void setId(String var1);

    public boolean isMandatory();

    public void setMandatory(boolean var1);

    public String getName();

    public void setName(String var1);

    public Category getParentCategory();

    public void setParentCategory(Category var1);

    public String getPath();
}

