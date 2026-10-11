/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.help.internal;

import java.lang.reflect.Constructor;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.UAElement;
import org.w3c.dom.Element;

public class UAElementFactory {
    private static final Class[][] interfaceTable;
    private static final Map classByElementName;
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;
    static /* synthetic */ Class class$10;
    static /* synthetic */ Class class$11;
    static /* synthetic */ Class class$12;
    static /* synthetic */ Class class$13;
    static /* synthetic */ Class class$14;
    static /* synthetic */ Class class$15;
    static /* synthetic */ Class class$16;
    static /* synthetic */ Class class$17;
    static /* synthetic */ Class class$18;
    static /* synthetic */ Class class$19;
    static /* synthetic */ Class class$20;
    static /* synthetic */ Class class$21;
    static /* synthetic */ Class class$22;
    static /* synthetic */ Class class$23;
    static /* synthetic */ Class class$24;
    static /* synthetic */ Class class$25;
    static /* synthetic */ Class class$26;
    static /* synthetic */ Class class$27;
    static /* synthetic */ Class class$28;
    static /* synthetic */ Class class$29;
    static /* synthetic */ Class class$30;
    static /* synthetic */ Class class$31;
    static /* synthetic */ Class class$32;

    static {
        Class[][] classArrayArray = new Class[16][];
        Class[] classArray = new Class[2];
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.help.ITopic");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[0] = clazz;
        Class<?> clazz2 = class$1;
        if (clazz2 == null) {
            try {
                clazz2 = class$1 = Class.forName("org.eclipse.help.internal.Topic");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray[1] = clazz2;
        classArrayArray[0] = classArray;
        Class[] classArray2 = new Class[2];
        Class<?> clazz3 = class$2;
        if (clazz3 == null) {
            try {
                clazz3 = class$2 = Class.forName("org.eclipse.help.IIndexEntry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[0] = clazz3;
        Class<?> clazz4 = class$3;
        if (clazz4 == null) {
            try {
                clazz4 = class$3 = Class.forName("org.eclipse.help.internal.index.IndexEntry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray2[1] = clazz4;
        classArrayArray[1] = classArray2;
        Class[] classArray3 = new Class[2];
        Class<?> clazz5 = class$4;
        if (clazz5 == null) {
            try {
                clazz5 = class$4 = Class.forName("org.eclipse.help.IContext");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[0] = clazz5;
        Class<?> clazz6 = class$5;
        if (clazz6 == null) {
            try {
                clazz6 = class$5 = Class.forName("org.eclipse.help.internal.context.Context");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray3[1] = clazz6;
        classArrayArray[2] = classArray3;
        Class[] classArray4 = new Class[2];
        Class<?> clazz7 = class$6;
        if (clazz7 == null) {
            try {
                clazz7 = class$6 = Class.forName("org.eclipse.help.IAnchor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray4[0] = clazz7;
        Class<?> clazz8 = class$7;
        if (clazz8 == null) {
            try {
                clazz8 = class$7 = Class.forName("org.eclipse.help.internal.Anchor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray4[1] = clazz8;
        classArrayArray[3] = classArray4;
        Class[] classArray5 = new Class[2];
        Class<?> clazz9 = class$8;
        if (clazz9 == null) {
            try {
                clazz9 = class$8 = Class.forName("org.eclipse.help.IInclude");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray5[0] = clazz9;
        Class<?> clazz10 = class$9;
        if (clazz10 == null) {
            try {
                clazz10 = class$9 = Class.forName("org.eclipse.help.internal.Include");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray5[1] = clazz10;
        classArrayArray[4] = classArray5;
        Class[] classArray6 = new Class[2];
        Class<?> clazz11 = class$10;
        if (clazz11 == null) {
            try {
                clazz11 = class$10 = Class.forName("org.eclipse.help.ILink");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray6[0] = clazz11;
        Class<?> clazz12 = class$11;
        if (clazz12 == null) {
            try {
                clazz12 = class$11 = Class.forName("org.eclipse.help.internal.toc.Link");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray6[1] = clazz12;
        classArrayArray[5] = classArray6;
        Class[] classArray7 = new Class[2];
        Class<?> clazz13 = class$12;
        if (clazz13 == null) {
            try {
                clazz13 = class$12 = Class.forName("org.eclipse.help.IIndexSee");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray7[0] = clazz13;
        Class<?> clazz14 = class$13;
        if (clazz14 == null) {
            try {
                clazz14 = class$13 = Class.forName("org.eclipse.help.internal.index.IndexSee");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray7[1] = clazz14;
        classArrayArray[6] = classArray7;
        Class[] classArray8 = new Class[2];
        Class<?> clazz15 = class$14;
        if (clazz15 == null) {
            try {
                clazz15 = class$14 = Class.forName("org.eclipse.help.IIndexSubpath");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray8[0] = clazz15;
        Class<?> clazz16 = class$15;
        if (clazz16 == null) {
            try {
                clazz16 = class$15 = Class.forName("org.eclipse.help.internal.index.IndexSubpath");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray8[1] = clazz16;
        classArrayArray[7] = classArray8;
        Class[] classArray9 = new Class[2];
        Class<?> clazz17 = class$16;
        if (clazz17 == null) {
            try {
                clazz17 = class$16 = Class.forName("org.eclipse.help.IToc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray9[0] = clazz17;
        Class<?> clazz18 = class$17;
        if (clazz18 == null) {
            try {
                clazz18 = class$17 = Class.forName("org.eclipse.help.internal.toc.Toc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray9[1] = clazz18;
        classArrayArray[8] = classArray9;
        Class[] classArray10 = new Class[2];
        Class<?> clazz19 = class$18;
        if (clazz19 == null) {
            try {
                clazz19 = class$18 = Class.forName("org.eclipse.help.ICommandLink");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray10[0] = clazz19;
        Class<?> clazz20 = class$19;
        if (clazz20 == null) {
            try {
                clazz20 = class$19 = Class.forName("org.eclipse.help.internal.CommandLink");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray10[1] = clazz20;
        classArrayArray[9] = classArray10;
        Class[] classArray11 = new Class[2];
        Class<?> clazz21 = class$20;
        if (clazz21 == null) {
            try {
                clazz21 = class$20 = Class.forName("org.eclipse.help.IIndex");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray11[0] = clazz21;
        Class<?> clazz22 = class$21;
        if (clazz22 == null) {
            try {
                clazz22 = class$21 = Class.forName("org.eclipse.help.internal.index.Index");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray11[1] = clazz22;
        classArrayArray[10] = classArray11;
        Class[] classArray12 = new Class[2];
        Class<?> clazz23 = class$22;
        if (clazz23 == null) {
            try {
                clazz23 = class$22 = Class.forName("org.eclipse.help.IContentExtension");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray12[0] = clazz23;
        Class<?> clazz24 = class$23;
        if (clazz24 == null) {
            try {
                clazz24 = class$23 = Class.forName("org.eclipse.help.internal.extension.ContentExtension");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray12[1] = clazz24;
        classArrayArray[11] = classArray12;
        Class[] classArray13 = new Class[2];
        Class<?> clazz25 = class$24;
        if (clazz25 == null) {
            try {
                clazz25 = class$24 = Class.forName("org.eclipse.help.ICriteria");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray13[0] = clazz25;
        Class<?> clazz26 = class$25;
        if (clazz26 == null) {
            try {
                clazz26 = class$25 = Class.forName("org.eclipse.help.internal.criteria.Criteria");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray13[1] = clazz26;
        classArrayArray[12] = classArray13;
        Class[] classArray14 = new Class[2];
        Class<?> clazz27 = class$26;
        if (clazz27 == null) {
            try {
                clazz27 = class$26 = Class.forName("org.eclipse.help.ICriteriaDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray14[0] = clazz27;
        Class<?> clazz28 = class$27;
        if (clazz28 == null) {
            try {
                clazz28 = class$27 = Class.forName("org.eclipse.help.internal.criteria.CriteriaDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray14[1] = clazz28;
        classArrayArray[13] = classArray14;
        Class[] classArray15 = new Class[2];
        Class<?> clazz29 = class$28;
        if (clazz29 == null) {
            try {
                clazz29 = class$28 = Class.forName("org.eclipse.help.ICriterionDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray15[0] = clazz29;
        Class<?> clazz30 = class$29;
        if (clazz30 == null) {
            try {
                clazz30 = class$29 = Class.forName("org.eclipse.help.internal.criteria.CriterionDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray15[1] = clazz30;
        classArrayArray[14] = classArray15;
        Class[] classArray16 = new Class[2];
        Class<?> clazz31 = class$30;
        if (clazz31 == null) {
            try {
                clazz31 = class$30 = Class.forName("org.eclipse.help.ICriterionValueDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray16[0] = clazz31;
        Class<?> clazz32 = class$31;
        if (clazz32 == null) {
            try {
                clazz32 = class$31 = Class.forName("org.eclipse.help.internal.criteria.CriterionValueDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classArray16[1] = clazz32;
        classArrayArray[15] = classArray16;
        interfaceTable = classArrayArray;
        classByElementName = Collections.synchronizedMap(new HashMap());
        Class<?> clazz33 = class$7;
        if (clazz33 == null) {
            try {
                clazz33 = class$7 = Class.forName("org.eclipse.help.internal.Anchor");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("anchor", clazz33);
        Class<?> clazz34 = class$9;
        if (clazz34 == null) {
            try {
                clazz34 = class$9 = Class.forName("org.eclipse.help.internal.Include");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("include", clazz34);
        Class<?> clazz35 = class$17;
        if (clazz35 == null) {
            try {
                clazz35 = class$17 = Class.forName("org.eclipse.help.internal.toc.Toc");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("toc", clazz35);
        Class<?> clazz36 = class$1;
        if (clazz36 == null) {
            try {
                clazz36 = class$1 = Class.forName("org.eclipse.help.internal.Topic");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("topic", clazz36);
        Class<?> clazz37 = class$21;
        if (clazz37 == null) {
            try {
                clazz37 = class$21 = Class.forName("org.eclipse.help.internal.index.Index");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("index", clazz37);
        Class<?> clazz38 = class$3;
        if (clazz38 == null) {
            try {
                clazz38 = class$3 = Class.forName("org.eclipse.help.internal.index.IndexEntry");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("entry", clazz38);
        Class<?> clazz39 = class$5;
        if (clazz39 == null) {
            try {
                clazz39 = class$5 = Class.forName("org.eclipse.help.internal.context.Context");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("context", clazz39);
        Class<?> clazz40 = class$19;
        if (clazz40 == null) {
            try {
                clazz40 = class$19 = Class.forName("org.eclipse.help.internal.CommandLink");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("command", clazz40);
        Class<?> clazz41 = class$11;
        if (clazz41 == null) {
            try {
                clazz41 = class$11 = Class.forName("org.eclipse.help.internal.toc.Link");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("link", clazz41);
        Class<?> clazz42 = class$13;
        if (clazz42 == null) {
            try {
                clazz42 = class$13 = Class.forName("org.eclipse.help.internal.index.IndexSee");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("see", clazz42);
        Class<?> clazz43 = class$15;
        if (clazz43 == null) {
            try {
                clazz43 = class$15 = Class.forName("org.eclipse.help.internal.index.IndexSubpath");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("subpath", clazz43);
        Class<?> clazz44 = class$25;
        if (clazz44 == null) {
            try {
                clazz44 = class$25 = Class.forName("org.eclipse.help.internal.criteria.Criteria");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("criteria", clazz44);
        Class<?> clazz45 = class$27;
        if (clazz45 == null) {
            try {
                clazz45 = class$27 = Class.forName("org.eclipse.help.internal.criteria.CriteriaDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("criteriaDefinition", clazz45);
        Class<?> clazz46 = class$29;
        if (clazz46 == null) {
            try {
                clazz46 = class$29 = Class.forName("org.eclipse.help.internal.criteria.CriterionDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("criterion", clazz46);
        Class<?> clazz47 = class$31;
        if (clazz47 == null) {
            try {
                clazz47 = class$31 = Class.forName("org.eclipse.help.internal.criteria.CriterionValueDefinition");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("criterion-value", clazz47);
        Class<?> clazz48 = class$23;
        if (clazz48 == null) {
            try {
                clazz48 = class$23 = Class.forName("org.eclipse.help.internal.extension.ContentExtension");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("contribution", clazz48);
        Class<?> clazz49 = class$23;
        if (clazz49 == null) {
            try {
                clazz49 = class$23 = Class.forName("org.eclipse.help.internal.extension.ContentExtension");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("topicExtension", clazz49);
        Class<?> clazz50 = class$23;
        if (clazz50 == null) {
            try {
                clazz50 = class$23 = Class.forName("org.eclipse.help.internal.extension.ContentExtension");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("replacement", clazz50);
        Class<?> clazz51 = class$23;
        if (clazz51 == null) {
            try {
                clazz51 = class$23 = Class.forName("org.eclipse.help.internal.extension.ContentExtension");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        classByElementName.put("topicReplace", clazz51);
    }

    public static UAElement newElement(Element element) {
        String name = element.getNodeName();
        Class clazz = (Class)classByElementName.get(name);
        if (clazz != null) {
            try {
                Class[] classArray = new Class[1];
                Class<?> clazz2 = class$32;
                if (clazz2 == null) {
                    try {
                        clazz2 = class$32 = Class.forName("org.w3c.dom.Element");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                classArray[0] = clazz2;
                Constructor constructor = clazz.getConstructor(classArray);
                return (UAElement)constructor.newInstance(element);
            }
            catch (Exception e) {
                String msg = "Error creating document model element";
                HelpPlugin.logError(msg, e);
            }
        }
        return new UAElement(element);
    }

    public static UAElement newElement(IUAElement src) {
        int i = 0;
        while (i < interfaceTable.length) {
            Class interfaze = interfaceTable[i][0];
            Class clazz = interfaceTable[i][1];
            if (interfaze.isAssignableFrom(src.getClass())) {
                try {
                    Constructor constructor = clazz.getConstructor(interfaze);
                    return (UAElement)constructor.newInstance(src);
                }
                catch (Exception e) {
                    String msg = "Error creating document model element";
                    HelpPlugin.logError(msg, e);
                }
            }
            ++i;
        }
        return null;
    }
}

