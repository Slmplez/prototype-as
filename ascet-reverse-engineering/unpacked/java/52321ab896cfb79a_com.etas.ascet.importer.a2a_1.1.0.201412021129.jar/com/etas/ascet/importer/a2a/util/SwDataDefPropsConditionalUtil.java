/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  autosar40.commonstructure.auxillaryobjects.SwAddrMethod
 *  autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum
 *  autosar40.commonstructure.datadefproperties.SwDataDefProps
 *  autosar40.commonstructure.datadefproperties.SwDataDefPropsConditional
 *  autosar40.commonstructure.globalconstraints.DataConstr
 *  autosar40.commonstructure.globalconstraints.DataConstrRule
 *  autosar40.commonstructure.globalconstraints.PhysConstrs
 *  autosar40.commonstructure.implementationdatatypes.ImplementationDataType
 *  autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement
 *  autosar40.swcomponent.datatype.computationmethod.CompuMethod
 *  autosar40.swcomponent.datatype.dataprototypes.DataPrototype
 *  autosar40.swcomponent.datatype.datatypes.AutosarDataType
 *  autosar40.swcomponent.datatype.localconstraints.IntervalTypeEnum
 *  autosar40.swcomponent.datatype.localconstraints.Limit
 *  com.etas.amd.core.DataAccess
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  org.apache.commons.lang.StringUtils
 *  org.eclipse.emf.common.util.EList
 */
package com.etas.ascet.importer.a2a.util;

import autosar40.commonstructure.auxillaryobjects.SwAddrMethod;
import autosar40.commonstructure.datadefproperties.SwCalibrationAccessEnum;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsConditional;
import autosar40.commonstructure.globalconstraints.DataConstr;
import autosar40.commonstructure.globalconstraints.DataConstrRule;
import autosar40.commonstructure.globalconstraints.PhysConstrs;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataType;
import autosar40.commonstructure.implementationdatatypes.ImplementationDataTypeElement;
import autosar40.swcomponent.datatype.computationmethod.CompuMethod;
import autosar40.swcomponent.datatype.dataprototypes.DataPrototype;
import autosar40.swcomponent.datatype.datatypes.AutosarDataType;
import autosar40.swcomponent.datatype.localconstraints.IntervalTypeEnum;
import autosar40.swcomponent.datatype.localconstraints.Limit;
import com.etas.amd.core.DataAccess;
import com.etas.ascet.importer.a2a.logger.Logger;
import com.etas.ascet.importer.a2a.type.TypeLimit;
import com.etas.ascet.importer.a2a.util.AutosarScoping;
import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import org.apache.commons.lang.StringUtils;
import org.eclipse.emf.common.util.EList;

public final class SwDataDefPropsConditionalUtil {
    public static DataAccess getCalibrationDefProp(DataPrototype dataElement) {
        SwDataDefPropsConditional defProps = SwDataDefPropsConditionalUtil.getDataDefPropsCondistional(dataElement);
        if (defProps != null && defProps.isSetSwCalibrationAccess()) {
            SwCalibrationAccessEnum swCalibrationAccess = defProps.getSwCalibrationAccess();
            switch (swCalibrationAccess) {
                case READ_ONLY: {
                    return DataAccess.createReadAccess();
                }
                case READ_WRITE: {
                    return DataAccess.createReadWriteAccess();
                }
            }
            return DataAccess.createNoAccess();
        }
        return null;
    }

    public static String getAddrMethod(DataPrototype dataElement) {
        SwDataDefPropsConditional defProps = SwDataDefPropsConditionalUtil.getDataDefPropsCondistional(dataElement);
        if (defProps == null) {
            return null;
        }
        SwAddrMethod swMemClass = defProps.getSwAddrMethod();
        if (swMemClass == null) {
            return null;
        }
        return swMemClass.getShortName();
    }

    public static String getImplPolicy(DataPrototype dataElement) {
        SwDataDefPropsConditional defProps = SwDataDefPropsConditionalUtil.getDataDefPropsCondistional(dataElement);
        if (defProps == null) {
            return null;
        }
        if (defProps.isSetSwImplPolicy()) {
            return defProps.getSwImplPolicy().getLiteral();
        }
        return null;
    }

    public static TypeLimit getLimit(AutosarDataType type, Logger lg) {
        PhysConstrs constrRule = SwDataDefPropsConditionalUtil.getConstrRule(type, lg);
        if (constrRule != null) {
            TypeLimit typeLimit = new TypeLimit(SwDataDefPropsConditionalUtil.getLowerLimit(constrRule), SwDataDefPropsConditionalUtil.getUpperLimit(constrRule));
            if (StringUtils.isBlank((String)typeLimit.getLower())) {
                lg.reportInvalidLimitValue(AutosarScoping.getARPath((GIdentifiable)type), typeLimit.getLower());
            }
            if (StringUtils.isBlank((String)typeLimit.getUpper())) {
                lg.reportInvalidLimitValue(AutosarScoping.getARPath((GIdentifiable)type), typeLimit.getUpper());
            }
            return typeLimit;
        }
        return new TypeLimit();
    }

    public static CompuMethod getCompuMethodOfType(AutosarDataType elem) {
        SwDataDefProps swDataDefProps = elem.getSwDataDefProps();
        if (swDataDefProps == null) {
            return null;
        }
        if (swDataDefProps.getSwDataDefPropsVariants().size() != 1) {
            throw new IllegalStateException("there are several or none SwDataDefPropsVariants defined for type " + elem.getShortName());
        }
        SwDataDefPropsConditional dataDefPropsCond = (SwDataDefPropsConditional)swDataDefProps.getSwDataDefPropsVariants().get(0);
        return dataDefPropsCond.getCompuMethod();
    }

    public static AutosarDataType getImplType(ImplementationDataTypeElement elem) {
        return SwDataDefPropsConditionalUtil.getImplType(elem.getSwDataDefProps(), (GIdentifiable)elem);
    }

    public static ImplementationDataType getImplType(AutosarDataType type) {
        return SwDataDefPropsConditionalUtil.getImplType(type.getSwDataDefProps(), (GIdentifiable)type);
    }

    private static SwDataDefPropsConditional getDataDefPropsCondistional(DataPrototype dataElement) {
        return SwDataDefPropsConditionalUtil.getDataDefPropsConditional(dataElement.getSwDataDefProps(), (GIdentifiable)dataElement);
    }

    private static SwDataDefPropsConditional getDataDefPropsCondistional(AutosarDataType type) {
        return SwDataDefPropsConditionalUtil.getDataDefPropsConditional(type.getSwDataDefProps(), (GIdentifiable)type);
    }

    private static String getLowerLimit(PhysConstrs constrain) {
        Limit lowerLimit = constrain.getLowerLimit();
        return SwDataDefPropsConditionalUtil.getLimitAsString(lowerLimit, "-INF");
    }

    private static String getUpperLimit(PhysConstrs constrain) {
        Limit upperLimit = constrain.getUpperLimit();
        return SwDataDefPropsConditionalUtil.getLimitAsString(upperLimit, "INF");
    }

    private static String getLimitAsString(Limit lowerLimit, String defaultValue) {
        if (lowerLimit != null) {
            if (lowerLimit.getIntervalType() == IntervalTypeEnum.INFINITE) {
                return defaultValue;
            }
            return lowerLimit.getMixedText();
        }
        return null;
    }

    private static PhysConstrs getConstrRule(AutosarDataType type, Logger lg) {
        SwDataDefPropsConditional dataDefPropsCondistional = SwDataDefPropsConditionalUtil.getDataDefPropsCondistional(type);
        DataConstr dataConstr = dataDefPropsCondistional.getDataConstr();
        if (dataConstr != null) {
            EList constrRules = dataConstr.getDataConstrRules();
            if (constrRules.size() != 1) {
                lg.reportUnsupportedVariations("DATA-CONSTR of type " + AutosarScoping.getARPath((GIdentifiable)type) + " has more than one constrains");
            }
            return ((DataConstrRule)constrRules.get(0)).getPhysConstrs();
        }
        return null;
    }

    private static ImplementationDataType getImplType(SwDataDefProps swDataDefProps, GIdentifiable obj) {
        if (swDataDefProps == null) {
            throw new IllegalStateException(String.format("%s '%s' has no implementation type", SwDataDefPropsConditionalUtil.getObjectKind(obj), AutosarScoping.getARPath(obj)));
        }
        EList dataDefPropsVariants = swDataDefProps.getSwDataDefPropsVariants();
        if (dataDefPropsVariants == null || dataDefPropsVariants.isEmpty()) {
            throw new IllegalStateException(String.format("%s %s has no implementation type", SwDataDefPropsConditionalUtil.getObjectKind(obj), AutosarScoping.getARPath(obj)));
        }
        return ((SwDataDefPropsConditional)dataDefPropsVariants.get(0)).getImplementationDataType();
    }

    private static String getObjectKind(GIdentifiable obj) {
        if (obj instanceof ImplementationDataTypeElement) {
            return "type";
        }
        return "element";
    }

    private static SwDataDefPropsConditional getDataDefPropsConditional(SwDataDefProps swDataDefProps, GIdentifiable obj) {
        if (swDataDefProps != null && !swDataDefProps.getSwDataDefPropsVariants().isEmpty()) {
            if (swDataDefProps.getSwDataDefPropsVariants().size() != 1) {
                throw new IllegalStateException("there are several or none SwDataDefPropsVariants defined for data prototype " + obj.gGetShortName());
            }
            return (SwDataDefPropsConditional)swDataDefProps.getSwDataDefPropsVariants().get(0);
        }
        return null;
    }
}

