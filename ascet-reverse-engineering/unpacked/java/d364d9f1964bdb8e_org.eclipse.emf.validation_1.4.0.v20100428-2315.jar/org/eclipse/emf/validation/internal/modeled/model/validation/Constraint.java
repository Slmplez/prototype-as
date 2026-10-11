/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.ecore.EObject
 */
package org.eclipse.emf.validation.internal.modeled.model.validation;

import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.validation.internal.modeled.model.validation.ModeEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.SeverityEnum;
import org.eclipse.emf.validation.internal.modeled.model.validation.Target;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Constraint
extends EObject {
    public String getId();

    public void setId(String var1);

    public String getName();

    public void setName(String var1);

    public SeverityEnum getSeverity();

    public void setSeverity(SeverityEnum var1);

    public int getStatusCode();

    public void setStatusCode(int var1);

    public String getClassName();

    public void setClassName(String var1);

    public ModeEnum getMode();

    public void setMode(ModeEnum var1);

    public boolean isIsEnabledByDefault();

    public void setIsEnabledByDefault(boolean var1);

    public String getDescription();

    public void setDescription(String var1);

    public String getMessage();

    public void setMessage(String var1);

    public EMap<String, String> getParameters();

    public Target getTarget();

    public void setTarget(Target var1);

    public String getLang();

    public void setLang(String var1);
}

