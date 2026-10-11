/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 */
package org.eclipse.emf.validation.internal.modeled.model.validation;

import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.validation.internal.modeled.model.validation.Constraints;
import org.eclipse.emf.validation.internal.modeled.model.validation.ModeEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.Target;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ConstraintProvider
extends EObject {
    public boolean isCache();

    public void setCache(boolean var1);

    public String getDescription();

    public void setDescription(String var1);

    public EList<Target> getTarget();

    public ModeEnum getMode();

    public void setMode(ModeEnum var1);

    public String getClassName();

    public void setClassName(String var1);

    public EList<Constraints> getConstraints();

    public EList<EPackage> getPackage();

    public String getPluginId();

    public void setPluginId(String var1);
}

