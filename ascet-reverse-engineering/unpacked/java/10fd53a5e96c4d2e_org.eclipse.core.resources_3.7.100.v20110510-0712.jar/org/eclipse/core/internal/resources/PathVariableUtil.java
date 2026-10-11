/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.filesystem.URIUtil
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 */
package org.eclipse.core.internal.resources;

import java.io.File;
import java.net.URI;
import java.util.ArrayList;
import java.util.LinkedList;
import org.eclipse.core.filesystem.URIUtil;
import org.eclipse.core.internal.resources.projectvariables.ProjectLocationVariableResolver;
import org.eclipse.core.internal.resources.projectvariables.WorkspaceLocationVariableResolver;
import org.eclipse.core.internal.resources.projectvariables.WorkspaceParentLocationVariableResolver;
import org.eclipse.core.resources.IPathVariableManager;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;

public class PathVariableUtil {
    public static String getUniqueVariableName(String variable, IResource resource) {
        int index = 1;
        String destVariable = variable = PathVariableUtil.getValidVariableName(variable);
        while (resource.getPathVariableManager().isDefined(destVariable)) {
            destVariable = String.valueOf(variable) + index;
            ++index;
        }
        return destVariable;
    }

    public static String getValidVariableName(String variable) {
        char first;
        int argumentIndex = variable.indexOf(45);
        if (argumentIndex != -1) {
            variable = variable.substring(0, argumentIndex);
        }
        if (!Character.isLetter(first = (variable = variable.trim()).charAt(0)) && first != '_') {
            variable = String.valueOf('A') + variable;
        }
        StringBuffer builder = new StringBuffer();
        int i = 0;
        while (i < variable.length()) {
            char c = variable.charAt(i);
            if ((Character.isLetter(c) || Character.isDigit(c) || c == '_') && !Character.isWhitespace(c)) {
                builder.append(c);
            }
            ++i;
        }
        variable = builder.toString();
        return variable;
    }

    public static IPath convertToPathRelativeMacro(IPathVariableManager pathVariableManager, IPath originalPath, IResource resource, boolean force, String variableHint) throws CoreException {
        return PathVariableUtil.convertToRelative(pathVariableManager, originalPath, resource, force, variableHint, true, true);
    }

    public static IPath convertToRelative(IPathVariableManager pathVariableManager, IPath originalPath, IResource resource, boolean force, String variableHint) throws CoreException {
        return PathVariableUtil.convertToRelative(pathVariableManager, originalPath, resource, force, variableHint, true, false);
    }

    public static URI convertToRelative(IPathVariableManager pathVariableManager, URI originalPath, IResource resource, boolean force, String variableHint) throws CoreException {
        return URIUtil.toURI((IPath)PathVariableUtil.convertToRelative(pathVariableManager, URIUtil.toPath((URI)originalPath), resource, force, variableHint, true, false));
    }

    public static URI convertToRelative(IPathVariableManager pathVariableManager, URI originalPath, IResource resource, boolean force, String variableHint, boolean skipWorkspace, boolean generateMacro) throws CoreException {
        return URIUtil.toURI((IPath)PathVariableUtil.convertToRelative(pathVariableManager, URIUtil.toPath((URI)originalPath), resource, force, variableHint));
    }

    private static IPath convertToRelative(IPathVariableManager pathVariableManager, IPath originalPath, IResource resource, boolean force, String variableHint, boolean skipWorkspace, boolean generateMacro) throws CoreException {
        IPath value;
        IPath value2;
        if (variableHint != null && pathVariableManager.isDefined(variableHint) && (value2 = URIUtil.toPath((URI)pathVariableManager.getURIValue(variableHint))) != null) {
            return PathVariableUtil.wrapInProperFormat(PathVariableUtil.makeRelativeToVariable(pathVariableManager, originalPath, resource, force, variableHint, generateMacro), generateMacro);
        }
        IPath path = PathVariableUtil.convertToProperCase(originalPath);
        IPath newPath = null;
        int maxMatchLength = -1;
        String[] existingVariables = pathVariableManager.getPathVariableNames();
        int i = 0;
        while (i < existingVariables.length) {
            int matchLength;
            String variable = existingVariables[i];
            if (!(skipWorkspace && variable.equals(WorkspaceLocationVariableResolver.NAME) || variable.equals(WorkspaceParentLocationVariableResolver.NAME) || variable.equals("PARENT") || (value = URIUtil.toPath((URI)pathVariableManager.getURIValue(variable))) == null || !(value = PathVariableUtil.convertToProperCase(URIUtil.toPath((URI)pathVariableManager.resolveURI(URIUtil.toURI((IPath)value))))).isPrefixOf(path) || (matchLength = value.segmentCount()) <= maxMatchLength)) {
                maxMatchLength = matchLength;
                newPath = PathVariableUtil.makeRelativeToVariable(pathVariableManager, originalPath, resource, force, variable, generateMacro);
            }
            ++i;
        }
        if (newPath != null) {
            return PathVariableUtil.wrapInProperFormat(newPath, generateMacro);
        }
        if (force) {
            int originalSegmentCount = originalPath.segmentCount();
            int j = 0;
            while (j <= originalSegmentCount) {
                IPath matchingPath = path.removeLastSegments(j);
                int minDifference = Integer.MAX_VALUE;
                int k = 0;
                while (k < existingVariables.length) {
                    int difference;
                    IPath value3;
                    String variable = existingVariables[k];
                    if (!(skipWorkspace && variable.equals(WorkspaceLocationVariableResolver.NAME) || variable.equals(WorkspaceParentLocationVariableResolver.NAME) || variable.equals("PARENT") || (value3 = URIUtil.toPath((URI)pathVariableManager.getURIValue(variable))) == null || !matchingPath.isPrefixOf(value3 = PathVariableUtil.convertToProperCase(URIUtil.toPath((URI)pathVariableManager.resolveURI(URIUtil.toURI((IPath)value3))))) || (difference = value3.segmentCount() - originalSegmentCount) >= minDifference)) {
                        minDifference = difference;
                        newPath = PathVariableUtil.makeRelativeToVariable(pathVariableManager, originalPath, resource, force, variable, generateMacro);
                    }
                    ++k;
                }
                if (newPath != null) {
                    return PathVariableUtil.wrapInProperFormat(newPath, generateMacro);
                }
                ++j;
            }
            if (originalSegmentCount == 0) {
                String variable = ProjectLocationVariableResolver.NAME;
                value = URIUtil.toPath((URI)pathVariableManager.getURIValue(variable));
                if (originalPath.isPrefixOf(value = PathVariableUtil.convertToProperCase(URIUtil.toPath((URI)pathVariableManager.resolveURI(URIUtil.toURI((IPath)value)))))) {
                    newPath = PathVariableUtil.makeRelativeToVariable(pathVariableManager, originalPath, resource, force, variable, generateMacro);
                }
                if (newPath != null) {
                    return PathVariableUtil.wrapInProperFormat(newPath, generateMacro);
                }
            }
        }
        if (skipWorkspace) {
            return PathVariableUtil.convertToRelative(pathVariableManager, originalPath, resource, force, variableHint, false, generateMacro);
        }
        return originalPath;
    }

    private static IPath wrapInProperFormat(IPath newPath, boolean generateMacro) {
        if (generateMacro) {
            newPath = PathVariableUtil.buildVariableMacro(newPath);
        }
        return newPath;
    }

    private static IPath makeRelativeToVariable(IPathVariableManager pathVariableManager, IPath originalPath, IResource resource, boolean force, String variableHint, boolean generateMacro) {
        int matchingFirstSegments;
        IPath path = PathVariableUtil.convertToProperCase(originalPath);
        IPath value = URIUtil.toPath((URI)pathVariableManager.getURIValue(variableHint));
        value = PathVariableUtil.convertToProperCase(URIUtil.toPath((URI)pathVariableManager.resolveURI(URIUtil.toURI((IPath)value))));
        int valueSegmentCount = value.segmentCount();
        if (value.isPrefixOf(path)) {
            IPath tmp = Path.fromOSString((String)variableHint);
            int j = valueSegmentCount;
            while (j < originalPath.segmentCount()) {
                tmp = tmp.append(originalPath.segment(j));
                ++j;
            }
            return tmp;
        }
        if (force && PathVariableUtil.devicesAreCompatible(path, value) && (matchingFirstSegments = path.matchingFirstSegments(value)) >= 0) {
            String originalName = PathVariableUtil.buildParentPathVariable(variableHint, valueSegmentCount - matchingFirstSegments, true);
            IPath tmp = Path.fromOSString((String)originalName);
            int j = matchingFirstSegments;
            while (j < originalPath.segmentCount()) {
                tmp = tmp.append(originalPath.segment(j));
                ++j;
            }
            return tmp;
        }
        return originalPath;
    }

    private static boolean devicesAreCompatible(IPath path, IPath value) {
        return path.getDevice() != null && value.getDevice() != null ? path.getDevice().equals(value.getDevice()) : path.getDevice() == value.getDevice();
    }

    private static IPath convertToProperCase(IPath path) {
        if (Platform.getOS().equals("win32")) {
            return Path.fromPortableString((String)path.toPortableString().toLowerCase());
        }
        return path;
    }

    public static boolean isParentVariable(String variableString) {
        return variableString.startsWith("PARENT-");
    }

    public static int getParentVariableCount(String variableString) {
        String[] items = variableString.split("-");
        if (items.length == 3) {
            try {
                Integer count = Integer.valueOf(items[1]);
                return count;
            }
            catch (NumberFormatException numberFormatException) {}
        }
        return -1;
    }

    public static String getParentVariableArgument(String variableString) {
        String[] items = variableString.split("-");
        if (items.length == 3) {
            return items[2];
        }
        return null;
    }

    public static String buildParentPathVariable(String variable, int difference, boolean generateMacro) {
        String newString = "PARENT-" + difference + "-" + variable;
        if (!generateMacro) {
            newString = "${" + newString + "}";
        }
        return newString;
    }

    public static IPath buildVariableMacro(IPath relativeSrcValue) {
        String variable = relativeSrcValue.segment(0);
        variable = "${" + variable + "}";
        return Path.fromOSString((String)variable).append(relativeSrcValue.removeFirstSegments(1));
    }

    public static String convertFromUserEditableFormatInternal(IPathVariableManager manager, String userFormat, boolean locationFormat) {
        char pathPrefix = '\u0000';
        if (userFormat.length() > 0 && (userFormat.charAt(0) == '/' || userFormat.charAt(0) == '\\')) {
            pathPrefix = userFormat.charAt(0);
        }
        String[] components = PathVariableUtil.splitPathComponents(userFormat);
        int i = 0;
        while (i < components.length) {
            if (components[i] != null && PathVariableUtil.isDotDot(components[i])) {
                int parentCount = 1;
                components[i] = null;
                int j = i + 1;
                while (j < components.length) {
                    if (components[j] != null) {
                        if (!PathVariableUtil.isDotDot(components[j])) break;
                        ++parentCount;
                        components[j] = null;
                    }
                    ++j;
                }
                if (i == 0) {
                    components[0] = PathVariableUtil.buildParentPathVariable(ProjectLocationVariableResolver.NAME, parentCount, false);
                } else {
                    j = i - 1;
                    while (j >= 0) {
                        if (parentCount == 0) break;
                        if (components[j] != null) {
                            String variable = PathVariableUtil.extractVariable(components[j]);
                            boolean hasVariableWithMacroSyntax = true;
                            if (variable.length() == 0 && locationFormat && j == 0) {
                                variable = components[j];
                                hasVariableWithMacroSyntax = false;
                            }
                            try {
                                if (variable.length() > 0) {
                                    String prefix = new String();
                                    if (hasVariableWithMacroSyntax) {
                                        int indexOfVariable = components[j].indexOf(variable) - "${".length();
                                        prefix = components[j].substring(0, indexOfVariable);
                                        String suffix = components[j].substring(indexOfVariable + "${".length() + variable.length() + "}".length());
                                        if (suffix.length() != 0) {
                                            String intermediateVariable = PathVariableUtil.getValidVariableName(String.valueOf(variable) + suffix);
                                            IPath intermediateValue = Path.fromPortableString((String)components[j]);
                                            int intermediateVariableIndex = 1;
                                            String originalIntermediateVariableName = intermediateVariable;
                                            while (manager.isDefined(intermediateVariable)) {
                                                IPath tmpValue = URIUtil.toPath((URI)manager.getURIValue(intermediateVariable));
                                                if (tmpValue.equals((Object)intermediateValue)) break;
                                                intermediateVariable = String.valueOf(originalIntermediateVariableName) + intermediateVariableIndex;
                                            }
                                            if (!manager.isDefined(intermediateVariable)) {
                                                manager.setURIValue(intermediateVariable, URIUtil.toURI((IPath)intermediateValue));
                                            }
                                            variable = intermediateVariable;
                                            prefix = new String();
                                        }
                                    }
                                    String newVariable = variable;
                                    if (PathVariableUtil.isParentVariable(variable)) {
                                        String argument = PathVariableUtil.getParentVariableArgument(variable);
                                        int count = PathVariableUtil.getParentVariableCount(variable);
                                        newVariable = argument != null && count != -1 ? PathVariableUtil.buildParentPathVariable(argument, count + parentCount, locationFormat) : PathVariableUtil.buildParentPathVariable(variable, parentCount, locationFormat);
                                    } else {
                                        newVariable = PathVariableUtil.buildParentPathVariable(variable, parentCount, locationFormat);
                                    }
                                    components[j] = String.valueOf(prefix) + newVariable;
                                    break;
                                }
                                components[j] = null;
                                --parentCount;
                            }
                            catch (CoreException coreException) {
                                components[j] = null;
                                --parentCount;
                            }
                        }
                        --j;
                    }
                }
            }
            ++i;
        }
        StringBuffer buffer = new StringBuffer();
        if (pathPrefix != '\u0000') {
            buffer.append(pathPrefix);
        }
        int i2 = 0;
        while (i2 < components.length) {
            if (components[i2] != null) {
                if (i2 > 0) {
                    buffer.append(File.separator);
                }
                buffer.append(components[i2]);
            }
            ++i2;
        }
        return buffer.toString();
    }

    private static boolean isDotDot(String component) {
        return component.equals("..");
    }

    private static String[] splitPathComponents(String userFormat) {
        ArrayList<String> list = new ArrayList<String>();
        StringBuffer buffer = new StringBuffer();
        int i = 0;
        while (i < userFormat.length()) {
            char c = userFormat.charAt(i);
            if (c == '/' || c == '\\') {
                if (buffer.length() > 0) {
                    list.add(buffer.toString());
                }
                buffer = new StringBuffer();
            } else {
                buffer.append(c);
            }
            ++i;
        }
        if (buffer.length() > 0) {
            list.add(buffer.toString());
        }
        return list.toArray(new String[0]);
    }

    public static String convertToUserEditableFormatInternal(String value, boolean locationFormat) {
        StringBuffer buffer = new StringBuffer();
        if (locationFormat) {
            IPath path = Path.fromOSString((String)value);
            if (path.isAbsolute()) {
                return path.toOSString();
            }
            int index = value.indexOf(File.separator);
            String variable = index != -1 ? value.substring(0, index) : value;
            PathVariableUtil.convertVariableToUserFormat(buffer, variable, variable, false);
            if (index != -1) {
                buffer.append(value.substring(index));
            }
        } else {
            String[] components = PathVariableUtil.splitVariablesAndContent(value);
            int i = 0;
            while (i < components.length) {
                String variable = PathVariableUtil.extractVariable(components[i]);
                PathVariableUtil.convertVariableToUserFormat(buffer, components[i], variable, true);
                ++i;
            }
        }
        return buffer.toString();
    }

    private static void convertVariableToUserFormat(StringBuffer buffer, String component, String variable, boolean generateMacro) {
        if (PathVariableUtil.isParentVariable(variable)) {
            String argument = PathVariableUtil.getParentVariableArgument(variable);
            int count = PathVariableUtil.getParentVariableCount(variable);
            if (argument != null && count != -1) {
                buffer.append(generateMacro ? PathVariableUtil.buildVariableMacro(Path.fromOSString((String)argument)) : Path.fromOSString((String)argument));
                int j = 0;
                while (j < count) {
                    buffer.append(String.valueOf(File.separator) + "..");
                    ++j;
                }
            } else {
                buffer.append(component);
            }
        } else {
            buffer.append(component);
        }
    }

    static String[] splitVariablesAndContent(String value) {
        int index;
        LinkedList<String> result = new LinkedList<String>();
        while ((index = value.indexOf("${")) != -1) {
            int endIndex = PathVariableUtil.getMatchingBrace(value, index);
            if (index > 0) {
                result.add(value.substring(0, index));
            }
            result.add(value.substring(index, endIndex + 1));
            value = value.substring(endIndex + 1);
        }
        if (value.length() > 0) {
            result.add(value);
        }
        return result.toArray(new String[0]);
    }

    static String[] splitVariableNames(String value) {
        int index;
        LinkedList<String> result = new LinkedList<String>();
        while ((index = value.indexOf("${")) != -1) {
            int endIndex = PathVariableUtil.getMatchingBrace(value, index);
            result.add(value.substring(index + 2, endIndex));
            value = value.substring(endIndex + 1);
        }
        return result.toArray(new String[0]);
    }

    static String extractVariable(String segment) {
        int index = segment.indexOf("${");
        if (index != -1) {
            int endIndex = PathVariableUtil.getMatchingBrace(segment, index);
            return segment.substring(index + 2, endIndex);
        }
        return "";
    }

    static int getMatchingBrace(String value, int index) {
        int scope = 0;
        int i = index + 1;
        while (i < value.length()) {
            char c = value.charAt(i);
            if (c == '}') {
                if (scope == 0) {
                    return i;
                }
                --scope;
            }
            if (c == '$' && i + 1 < value.length() && value.charAt(i + 1) == '{') {
                ++scope;
            }
            ++i;
        }
        return value.length();
    }

    public static boolean isPreferred(String variableName) {
        return !variableName.equals(WorkspaceLocationVariableResolver.NAME) && !variableName.equals(WorkspaceParentLocationVariableResolver.NAME) && !variableName.equals("PARENT");
    }
}

