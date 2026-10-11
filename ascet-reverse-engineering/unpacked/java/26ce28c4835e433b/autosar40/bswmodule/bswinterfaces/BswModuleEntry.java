/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.PositiveIntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.bswmodule.bswinterfaces;

import autosar40.bswmodule.bswinterfaces.BswCallType;
import autosar40.bswmodule.bswinterfaces.BswExecutionContext;
import autosar40.commonstructure.serviceprocesstask.SwServiceArg;
import autosar40.commonstructure.serviceprocesstask.SwServiceImplPolicyEnum;
import autosar40.genericstructure.generaltemplateclasses.arpackage.ARElement;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprint;
import autosar40.standardization.abstractblueprintstructure.AtpBlueprintable;
import org.artop.aal.common.datatypes.PositiveIntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface BswModuleEntry
extends ARElement,
AtpBlueprint,
AtpBlueprintable {
    public Long getServiceId();

    public void setServiceId(Long var1);

    public void unsetServiceId();

    public boolean isSetServiceId();

    public String getRole();

    public void setRole(String var1);

    public void unsetRole();

    public boolean isSetRole();

    public Boolean getIsReentrant();

    public void setIsReentrant(Boolean var1);

    public void unsetIsReentrant();

    public boolean isSetIsReentrant();

    public Boolean getIsSynchronous();

    public void setIsSynchronous(Boolean var1);

    public void unsetIsSynchronous();

    public boolean isSetIsSynchronous();

    public BswCallType getCallType();

    public void setCallType(BswCallType var1);

    public void unsetCallType();

    public boolean isSetCallType();

    public BswExecutionContext getExecutionContext();

    public void setExecutionContext(BswExecutionContext var1);

    public void unsetExecutionContext();

    public boolean isSetExecutionContext();

    public SwServiceImplPolicyEnum getSwServiceImplPolicy();

    public void setSwServiceImplPolicy(SwServiceImplPolicyEnum var1);

    public void unsetSwServiceImplPolicy();

    public boolean isSetSwServiceImplPolicy();

    public SwServiceArg getReturnType();

    public void setReturnType(SwServiceArg var1);

    public EList<SwServiceArg> getArguments();

    public PositiveIntegerDatatype getServiceIdData();

    public void setServiceIdData(PositiveIntegerDatatype var1);
}

