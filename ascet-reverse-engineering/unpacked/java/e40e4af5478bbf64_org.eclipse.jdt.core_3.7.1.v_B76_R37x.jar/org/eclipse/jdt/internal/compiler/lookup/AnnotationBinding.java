/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.ElementValuePair;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class AnnotationBinding {
    ReferenceBinding type;
    ElementValuePair[] pairs;

    public static AnnotationBinding[] addStandardAnnotations(AnnotationBinding[] recordedAnnotations, long annotationTagBits, LookupEnvironment env) {
        int count = 0;
        if ((annotationTagBits & 0xFF800000000L) != 0L) {
            ++count;
        }
        if ((annotationTagBits & 0x300000000000L) != 0L) {
            ++count;
        }
        if ((annotationTagBits & 0x400000000000L) != 0L) {
            ++count;
        }
        if ((annotationTagBits & 0x800000000000L) != 0L) {
            ++count;
        }
        if ((annotationTagBits & 0x1000000000000L) != 0L) {
            ++count;
        }
        if ((annotationTagBits & 0x2000000000000L) != 0L) {
            ++count;
        }
        if ((annotationTagBits & 0x4000000000000L) != 0L) {
            ++count;
        }
        if ((annotationTagBits & 0x10000000000000L) != 0L) {
            ++count;
        }
        if ((annotationTagBits & 0x8000000000000L) != 0L) {
            ++count;
        }
        if (count == 0) {
            return recordedAnnotations;
        }
        int index = recordedAnnotations.length;
        AnnotationBinding[] result = new AnnotationBinding[index + count];
        System.arraycopy(recordedAnnotations, 0, result, 0, index);
        if ((annotationTagBits & 0xFF800000000L) != 0L) {
            result[index++] = AnnotationBinding.buildTargetAnnotation(annotationTagBits, env);
        }
        if ((annotationTagBits & 0x300000000000L) != 0L) {
            result[index++] = AnnotationBinding.buildRetentionAnnotation(annotationTagBits, env);
        }
        if ((annotationTagBits & 0x400000000000L) != 0L) {
            result[index++] = AnnotationBinding.buildMarkerAnnotation(TypeConstants.JAVA_LANG_DEPRECATED, env);
        }
        if ((annotationTagBits & 0x800000000000L) != 0L) {
            result[index++] = AnnotationBinding.buildMarkerAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_DOCUMENTED, env);
        }
        if ((annotationTagBits & 0x1000000000000L) != 0L) {
            result[index++] = AnnotationBinding.buildMarkerAnnotation(TypeConstants.JAVA_LANG_ANNOTATION_INHERITED, env);
        }
        if ((annotationTagBits & 0x2000000000000L) != 0L) {
            result[index++] = AnnotationBinding.buildMarkerAnnotation(TypeConstants.JAVA_LANG_OVERRIDE, env);
        }
        if ((annotationTagBits & 0x4000000000000L) != 0L) {
            result[index++] = AnnotationBinding.buildMarkerAnnotation(TypeConstants.JAVA_LANG_SUPPRESSWARNINGS, env);
        }
        if ((annotationTagBits & 0x10000000000000L) != 0L) {
            result[index++] = AnnotationBinding.buildMarkerAnnotationForMemberType(TypeConstants.JAVA_LANG_INVOKE_METHODHANDLE_$_POLYMORPHICSIGNATURE, env);
        }
        if ((annotationTagBits & 0x8000000000000L) != 0L) {
            result[index++] = AnnotationBinding.buildMarkerAnnotation(TypeConstants.JAVA_LANG_SAFEVARARGS, env);
        }
        return result;
    }

    private static AnnotationBinding buildMarkerAnnotationForMemberType(char[][] compoundName, LookupEnvironment env) {
        ReferenceBinding type = env.getResolvedType(compoundName, null);
        if (!type.isValidBinding()) {
            type = ((ProblemReferenceBinding)type).closestMatch;
        }
        return env.createAnnotation(type, Binding.NO_ELEMENT_VALUE_PAIRS);
    }

    private static AnnotationBinding buildMarkerAnnotation(char[][] compoundName, LookupEnvironment env) {
        ReferenceBinding type = env.getResolvedType(compoundName, null);
        return env.createAnnotation(type, Binding.NO_ELEMENT_VALUE_PAIRS);
    }

    private static AnnotationBinding buildRetentionAnnotation(long bits, LookupEnvironment env) {
        ReferenceBinding retentionPolicy = env.getResolvedType(TypeConstants.JAVA_LANG_ANNOTATION_RETENTIONPOLICY, null);
        FieldBinding value = null;
        if ((bits & 0x300000000000L) == 0x300000000000L) {
            value = retentionPolicy.getField(TypeConstants.UPPER_RUNTIME, true);
        } else if ((bits & 0x200000000000L) != 0L) {
            value = retentionPolicy.getField(TypeConstants.UPPER_CLASS, true);
        } else if ((bits & 0x100000000000L) != 0L) {
            value = retentionPolicy.getField(TypeConstants.UPPER_SOURCE, true);
        }
        return env.createAnnotation(env.getResolvedType(TypeConstants.JAVA_LANG_ANNOTATION_RETENTION, null), new ElementValuePair[]{new ElementValuePair(TypeConstants.VALUE, value, null)});
    }

    private static AnnotationBinding buildTargetAnnotation(long bits, LookupEnvironment env) {
        ReferenceBinding target = env.getResolvedType(TypeConstants.JAVA_LANG_ANNOTATION_TARGET, null);
        if ((bits & 0x800000000L) != 0L) {
            return new AnnotationBinding(target, Binding.NO_ELEMENT_VALUE_PAIRS);
        }
        int arraysize = 0;
        if ((bits & 0x40000000000L) != 0L) {
            ++arraysize;
        }
        if ((bits & 0x10000000000L) != 0L) {
            ++arraysize;
        }
        if ((bits & 0x2000000000L) != 0L) {
            ++arraysize;
        }
        if ((bits & 0x20000000000L) != 0L) {
            ++arraysize;
        }
        if ((bits & 0x4000000000L) != 0L) {
            ++arraysize;
        }
        if ((bits & 0x80000000000L) != 0L) {
            ++arraysize;
        }
        if ((bits & 0x8000000000L) != 0L) {
            ++arraysize;
        }
        if ((bits & 0x1000000000L) != 0L) {
            ++arraysize;
        }
        Object[] value = new Object[arraysize];
        if (arraysize > 0) {
            ReferenceBinding elementType = env.getResolvedType(TypeConstants.JAVA_LANG_ANNOTATION_ELEMENTTYPE, null);
            int index = 0;
            if ((bits & 0x40000000000L) != 0L) {
                value[index++] = elementType.getField(TypeConstants.UPPER_ANNOTATION_TYPE, true);
            }
            if ((bits & 0x10000000000L) != 0L) {
                value[index++] = elementType.getField(TypeConstants.UPPER_CONSTRUCTOR, true);
            }
            if ((bits & 0x2000000000L) != 0L) {
                value[index++] = elementType.getField(TypeConstants.UPPER_FIELD, true);
            }
            if ((bits & 0x20000000000L) != 0L) {
                value[index++] = elementType.getField(TypeConstants.UPPER_LOCAL_VARIABLE, true);
            }
            if ((bits & 0x4000000000L) != 0L) {
                value[index++] = elementType.getField(TypeConstants.UPPER_METHOD, true);
            }
            if ((bits & 0x80000000000L) != 0L) {
                value[index++] = elementType.getField(TypeConstants.UPPER_PACKAGE, true);
            }
            if ((bits & 0x8000000000L) != 0L) {
                value[index++] = elementType.getField(TypeConstants.UPPER_PARAMETER, true);
            }
            if ((bits & 0x1000000000L) != 0L) {
                value[index++] = elementType.getField(TypeConstants.TYPE, true);
            }
        }
        return env.createAnnotation(target, new ElementValuePair[]{new ElementValuePair(TypeConstants.VALUE, value, null)});
    }

    AnnotationBinding(ReferenceBinding type, ElementValuePair[] pairs) {
        this.type = type;
        this.pairs = pairs;
    }

    AnnotationBinding(Annotation astAnnotation) {
        this((ReferenceBinding)astAnnotation.resolvedType, astAnnotation.computeElementValuePairs());
    }

    public char[] computeUniqueKey(char[] recipientKey) {
        char[] typeKey = this.type.computeUniqueKey(false);
        int recipientKeyLength = recipientKey.length;
        char[] uniqueKey = new char[recipientKeyLength + 1 + typeKey.length];
        System.arraycopy(recipientKey, 0, uniqueKey, 0, recipientKeyLength);
        uniqueKey[recipientKeyLength] = 64;
        System.arraycopy(typeKey, 0, uniqueKey, recipientKeyLength + 1, typeKey.length);
        return uniqueKey;
    }

    public ReferenceBinding getAnnotationType() {
        return this.type;
    }

    public ElementValuePair[] getElementValuePairs() {
        return this.pairs;
    }

    public static void setMethodBindings(ReferenceBinding type, ElementValuePair[] pairs) {
        int i = pairs.length;
        while (--i >= 0) {
            ElementValuePair pair = pairs[i];
            MethodBinding[] methods = type.getMethods(pair.getName());
            if (methods == null || methods.length != 1) continue;
            pair.setMethodBinding(methods[0]);
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer(5);
        buffer.append('@').append(this.type.sourceName);
        if (this.pairs != null && this.pairs.length > 0) {
            buffer.append("{ ");
            int i = 0;
            int max = this.pairs.length;
            while (i < max) {
                if (i > 0) {
                    buffer.append(", ");
                }
                buffer.append(this.pairs[i]);
                ++i;
            }
            buffer.append('}');
        }
        return buffer.toString();
    }
}

