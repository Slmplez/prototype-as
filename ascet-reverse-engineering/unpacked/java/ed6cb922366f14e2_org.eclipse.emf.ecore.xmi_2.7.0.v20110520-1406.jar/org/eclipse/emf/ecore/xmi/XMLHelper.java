/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EMap
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EFactory
 *  org.eclipse.emf.ecore.ENamedElement
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.ExtendedMetaData
 */
package org.eclipse.emf.ecore.xmi;

import java.util.List;
import java.util.Map;
import org.eclipse.emf.common.util.EMap;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EFactory;
import org.eclipse.emf.ecore.ENamedElement;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.ExtendedMetaData;
import org.eclipse.emf.ecore.xmi.DanglingHREFException;
import org.eclipse.emf.ecore.xmi.NameInfo;
import org.eclipse.emf.ecore.xmi.XMIException;
import org.eclipse.emf.ecore.xmi.XMLResource;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface XMLHelper {
    public static final int DATATYPE_SINGLE = 1;
    public static final int DATATYPE_IS_MANY = 2;
    public static final int IS_MANY_ADD = 3;
    public static final int IS_MANY_MOVE = 4;
    public static final int OTHER = 5;

    public void setOptions(Map<?, ?> var1);

    public void setNoNamespacePackage(EPackage var1);

    public EPackage getNoNamespacePackage();

    public void setAnySimpleType(EClass var1);

    public void setXMLMap(XMLResource.XMLMap var1);

    public XMLResource.XMLMap getXMLMap();

    public void setExtendedMetaData(ExtendedMetaData var1);

    public ExtendedMetaData getExtendedMetaData();

    public XMLResource getResource();

    public Object getValue(EObject var1, EStructuralFeature var2);

    public String getName(ENamedElement var1);

    public String getQName(EClass var1);

    public void populateNameInfo(NameInfo var1, EClass var2);

    public String getQName(EDataType var1);

    public void populateNameInfo(NameInfo var1, EDataType var2);

    public String getQName(EStructuralFeature var1);

    public void populateNameInfo(NameInfo var1, EStructuralFeature var2);

    public String getPrefix(String var1);

    public String getPrefix(EPackage var1);

    public String getNamespaceURI(String var1);

    public List<String> getPrefixes(EPackage var1);

    public String getID(EObject var1);

    public String getIDREF(EObject var1);

    public String getHREF(EObject var1);

    public URI deresolve(URI var1);

    public EPackage[] packages();

    @Deprecated
    public EObject createObject(EFactory var1, String var2);

    public EObject createObject(EFactory var1, EClassifier var2);

    public EClassifier getType(EFactory var1, String var2);

    public void setValue(EObject var1, EStructuralFeature var2, Object var3, int var4);

    public EStructuralFeature getFeature(EClass var1, String var2, String var3);

    public EStructuralFeature getFeature(EClass var1, String var2, String var3, boolean var4);

    public int getFeatureKind(EStructuralFeature var1);

    public String getXMLEncoding(String var1);

    public String getJavaEncoding(String var1);

    public List<XMIException> setManyReference(ManyReference var1, String var2);

    public void setCheckForDuplicates(boolean var1);

    public void setProcessDanglingHREF(String var1);

    public DanglingHREFException getDanglingHREFException();

    public URI resolve(URI var1, URI var2);

    public void addPrefix(String var1, String var2);

    public Map<String, String> getAnyContentPrefixToURIMapping();

    public void recordPrefixToURIMapping();

    public String getURI(String var1);

    public void pushContext();

    public void popContext();

    public void popContext(Map<String, EFactory> var1);

    public String convertToString(EFactory var1, EDataType var2, Object var3);

    public EMap<String, String> getPrefixToNamespaceMap();

    public void setPrefixToNamespaceMap(EMap<String, String> var1);

    public void setMustHavePrefix(boolean var1);

    public static interface ManyReference {
        public EObject getObject();

        public EStructuralFeature getFeature();

        public Object[] getValues();

        public int[] getPositions();

        public int getLineNumber();

        public int getColumnNumber();
    }
}

