/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.emf.ecore.util;

import java.util.Collection;
import java.util.List;
import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.BasicExtendedMetaData;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ExtendedMetaData {
    public static final String ANNOTATION_URI = "http:///org/eclipse/emf/ecore/util/ExtendedMetaData";
    public static final String XMLNS_URI = "http://www.w3.org/2000/xmlns/";
    public static final String XML_URI = "http://www.w3.org/XML/1998/namespace";
    public static final String XSI_URI = "http://www.w3.org/2001/XMLSchema-instance";
    public static final String XML_SCHEMA_URI = "http://www.w3.org/2001/XMLSchema";
    public static final String XMI_URI = "http://www.omg.org/XMI";
    public static final String XMLNS_PREFIX = "xmlns";
    public static final String XSI_PREFIX = "xsi";
    public static final int UNSPECIFIED_FEATURE = 0;
    public static final int SIMPLE_FEATURE = 1;
    public static final int ATTRIBUTE_FEATURE = 2;
    public static final int ATTRIBUTE_WILDCARD_FEATURE = 3;
    public static final int ELEMENT_FEATURE = 4;
    public static final int ELEMENT_WILDCARD_FEATURE = 5;
    public static final int GROUP_FEATURE = 6;
    public static final String[] FEATURE_KINDS = new String[]{"unspecified", "simple", "attribute", "attributeWildcard", "element", "elementWildcard", "group"};
    public static final int UNSPECIFIED_CONTENT = 0;
    public static final int EMPTY_CONTENT = 1;
    public static final int SIMPLE_CONTENT = 2;
    public static final int MIXED_CONTENT = 3;
    public static final int ELEMENT_ONLY_CONTENT = 4;
    public static final String[] CONTENT_KINDS = new String[]{"unspecified", "empty", "simple", "mixed", "elementOnly"};
    public static final int UNSPECIFIED_DERIVATION = 0;
    public static final int RESTRICTION_DERIVATION = 1;
    public static final int LIST_DERIVATION = 2;
    public static final int UNION_DERIVATION = 3;
    public static final String[] DERIVATION_KINDS = new String[]{"unspecified", "restriction", "list", "union"};
    public static final int UNSPECIFIED_PROCESSING = 0;
    public static final int STRICT_PROCESSING = 1;
    public static final int LAX_PROCESSING = 2;
    public static final int SKIP_PROCESSING = 3;
    public static final String[] PROCESSING_KINDS = new String[]{"unspecified", "strict", "lax", "skip"};
    public static final int UNSPECIFIED_WHITE_SPACE = 0;
    public static final int PRESERVE_WHITE_SPACE = 1;
    public static final int REPLACE_WHITE_SPACE = 2;
    public static final int COLLAPSE_WHITE_SPACE = 3;
    public static final String[] WHITE_SPACE_KINDS = new String[]{"unspecified", "preserve", "replace", "collapse"};
    public static final ExtendedMetaData INSTANCE = new BasicExtendedMetaData();

    public EPackage getPackage(String var1);

    public void putPackage(String var1, EPackage var2);

    public EClass getDocumentRoot(EPackage var1);

    public void setDocumentRoot(EClass var1);

    public boolean isDocumentRoot(EClass var1);

    public EReference getXMLNSPrefixMapFeature(EClass var1);

    public EReference getXSISchemaLocationMapFeature(EClass var1);

    public boolean isQualified(EPackage var1);

    public void setQualified(EPackage var1, boolean var2);

    public String getNamespace(EPackage var1);

    public String getNamespace(EClassifier var1);

    public String getNamespace(EStructuralFeature var1);

    public void setNamespace(EStructuralFeature var1, String var2);

    public String getName(EClassifier var1);

    public void setName(EClassifier var1, String var2);

    public boolean isAnonymous(EClassifier var1);

    public String getName(EStructuralFeature var1);

    public void setName(EStructuralFeature var1, String var2);

    public EClassifier getType(String var1, String var2);

    public EStructuralFeature getAttribute(String var1, String var2);

    public EStructuralFeature getElement(String var1, String var2);

    public EClassifier getType(EPackage var1, String var2);

    public EStructuralFeature getAttribute(EClass var1, String var2, String var3);

    public EStructuralFeature getElement(EClass var1, String var2, String var3);

    public EStructuralFeature getSimpleFeature(EClass var1);

    public EAttribute getMixedFeature(EClass var1);

    public int getFeatureKind(EStructuralFeature var1);

    public void setFeatureKind(EStructuralFeature var1, int var2);

    public int getContentKind(EClass var1);

    public void setContentKind(EClass var1, int var2);

    public int getDerivationKind(EDataType var1);

    public EDataType getBaseType(EDataType var1);

    public void setBaseType(EDataType var1, EDataType var2);

    public EDataType getItemType(EDataType var1);

    public void setItemType(EDataType var1, EDataType var2);

    public List<EDataType> getMemberTypes(EDataType var1);

    public void setMemberTypes(EDataType var1, List<EDataType> var2);

    public List<EStructuralFeature> getAllAttributes(EClass var1);

    public List<EStructuralFeature> getAllElements(EClass var1);

    public List<EStructuralFeature> getAttributes(EClass var1);

    public List<EStructuralFeature> getElements(EClass var1);

    public boolean matches(List<String> var1, String var2);

    public boolean matches(String var1, String var2);

    public List<String> getWildcards(EStructuralFeature var1);

    public void setWildcards(EStructuralFeature var1, List<String> var2);

    public int getProcessingKind(EStructuralFeature var1);

    public void setProcessingKind(EStructuralFeature var1, int var2);

    public EStructuralFeature getAffiliation(EStructuralFeature var1);

    public void setAffiliation(EStructuralFeature var1, EStructuralFeature var2);

    public EStructuralFeature getGroup(EStructuralFeature var1);

    public void setGroup(EStructuralFeature var1, EStructuralFeature var2);

    public EStructuralFeature getAffiliation(EClass var1, EStructuralFeature var2);

    public EStructuralFeature getAttributeWildcardAffiliation(EClass var1, String var2, String var3);

    public EStructuralFeature getElementWildcardAffiliation(EClass var1, String var2, String var3);

    public int getWhiteSpaceFacet(EDataType var1);

    public void setWhiteSpaceFacet(EDataType var1, int var2);

    public List<String> getEnumerationFacet(EDataType var1);

    public void setEnumerationFacet(EDataType var1, List<String> var2);

    public List<String> getPatternFacet(EDataType var1);

    public void setPatternFacet(EDataType var1, List<String> var2);

    public int getTotalDigitsFacet(EDataType var1);

    public void setTotalDigitsFacet(EDataType var1, int var2);

    public int getFractionDigitsFacet(EDataType var1);

    public void setFractionDigitsFacet(EDataType var1, int var2);

    public int getLengthFacet(EDataType var1);

    public void setLengthFacet(EDataType var1, int var2);

    public int getMinLengthFacet(EDataType var1);

    public void setMinLengthFacet(EDataType var1, int var2);

    public int getMaxLengthFacet(EDataType var1);

    public void setMaxLengthFacet(EDataType var1, int var2);

    public String getMinExclusiveFacet(EDataType var1);

    public void setMinExclusiveFacet(EDataType var1, String var2);

    public String getMaxExclusiveFacet(EDataType var1);

    public void setMaxExclusiveFacet(EDataType var1, String var2);

    public String getMinInclusiveFacet(EDataType var1);

    public void setMinInclusiveFacet(EDataType var1, String var2);

    public String getMaxInclusiveFacet(EDataType var1);

    public void setMaxInclusiveFacet(EDataType var1, String var2);

    public EPackage demandPackage(String var1);

    public EClassifier demandType(String var1, String var2);

    public EStructuralFeature demandFeature(String var1, String var2, boolean var3);

    public EStructuralFeature demandFeature(String var1, String var2, boolean var3, boolean var4);

    public Collection<EPackage> demandedPackages();
}

