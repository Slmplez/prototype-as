/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EEnum
 *  org.eclipse.emf.ecore.EPackage
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums;

import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.InlineattributeenumsFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.textmodel.inlineattributeenums.impl.InlineattributeenumsPackageImpl;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

public interface InlineattributeenumsPackage
extends EPackage {
    public static final String eNAME = "inlineattributeenums";
    public static final String eNS_URI = "http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/tm/iae";
    public static final String eNS_PREFIX = "";
    public static final InlineattributeenumsPackage eINSTANCE = InlineattributeenumsPackageImpl.init();
    public static final int EENUM = 0;
    public static final int EENUM_FONT = 1;
    public static final int SHOW_CONTENT_ENUM = 2;
    public static final int SHOW_RESOURCE_ALIAS_NAME_ENUM = 3;
    public static final int SHOW_RESOURCE_CATEGORY_ENUM = 4;
    public static final int SHOW_RESOURCE_LONG_NAME_ENUM = 5;
    public static final int SHOW_RESOURCE_NUMBER_ENUM = 6;
    public static final int SHOW_RESOURCE_PAGE_ENUM = 7;
    public static final int SHOW_RESOURCE_SHORT_NAME_ENUM = 8;
    public static final int SHOW_RESOURCE_TYPE_ENUM = 9;
    public static final int SHOW_SEE_ENUM = 10;
    public static final int EXT_ID_CLASS_ENUM = 11;

    public EEnum getEEnum();

    public EEnum getEEnumFont();

    public EEnum getShowContentEnum();

    public EEnum getShowResourceAliasNameEnum();

    public EEnum getShowResourceCategoryEnum();

    public EEnum getShowResourceLongNameEnum();

    public EEnum getShowResourceNumberEnum();

    public EEnum getShowResourcePageEnum();

    public EEnum getShowResourceShortNameEnum();

    public EEnum getShowResourceTypeEnum();

    public EEnum getShowSeeEnum();

    public EDataType getExtIdClassEnum();

    public InlineattributeenumsFactory getInlineattributeenumsFactory();

    public static interface Literals {
        public static final EEnum EENUM = eINSTANCE.getEEnum();
        public static final EEnum EENUM_FONT = eINSTANCE.getEEnumFont();
        public static final EEnum SHOW_CONTENT_ENUM = eINSTANCE.getShowContentEnum();
        public static final EEnum SHOW_RESOURCE_ALIAS_NAME_ENUM = eINSTANCE.getShowResourceAliasNameEnum();
        public static final EEnum SHOW_RESOURCE_CATEGORY_ENUM = eINSTANCE.getShowResourceCategoryEnum();
        public static final EEnum SHOW_RESOURCE_LONG_NAME_ENUM = eINSTANCE.getShowResourceLongNameEnum();
        public static final EEnum SHOW_RESOURCE_NUMBER_ENUM = eINSTANCE.getShowResourceNumberEnum();
        public static final EEnum SHOW_RESOURCE_PAGE_ENUM = eINSTANCE.getShowResourcePageEnum();
        public static final EEnum SHOW_RESOURCE_SHORT_NAME_ENUM = eINSTANCE.getShowResourceShortNameEnum();
        public static final EEnum SHOW_RESOURCE_TYPE_ENUM = eINSTANCE.getShowResourceTypeEnum();
        public static final EEnum SHOW_SEE_ENUM = eINSTANCE.getShowSeeEnum();
        public static final EDataType EXT_ID_CLASS_ENUM = eINSTANCE.getExtIdClassEnum();
    }
}

