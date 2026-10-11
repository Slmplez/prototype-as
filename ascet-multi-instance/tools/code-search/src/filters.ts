import { STATE_BINDING_KINDS, STATE_SOURCE_KINDS, TEXT_KINDS } from './protocol.js';
import type { SearchFilters, SourceDocument } from './types.js';

export const FILTER_KEYS = ['component_oids', 'member_ids', 'member_names', 'kinds', 'implementation_oids', 'variants', 'diagram_ids', 'diagram_visibilities'] as const;
export const SEARCH_KINDS = new Set([...TEXT_KINDS, ...STATE_SOURCE_KINDS, ...STATE_BINDING_KINDS, 'graphical_method', 'diagram']);
const FIELDS = ['component_oid', 'member_id', 'member_name', 'kind', 'implementation_oid', 'variant'] as const;

export function validateFilters(value: unknown): SearchFilters {
  if (!value || typeof value !== 'object' || Array.isArray(value)) throw new Error('filters must be an object');
  const input = value as Record<string, unknown>, result: SearchFilters = {};
  if (Object.keys(input).some(k => !FILTER_KEYS.includes(k as typeof FILTER_KEYS[number]))) throw new Error('Unsupported filter field');
  for (const key of FILTER_KEYS) {
    if (!Object.hasOwn(input, key)) continue;
    const list = input[key];
    if (!Array.isArray(list) || !list.length || list.length > 64 || list.some(v => typeof v !== 'string' || v.length > 256 ||
      /[\r\n\0]/u.test(v) || (!v && !['implementation_oids', 'member_ids', 'member_names'].includes(key)))) {
      throw new Error(key + ' must contain 1-64 strings of at most 256 characters without newline/NUL');
    }
    if (key === 'kinds' && list.some(v => !SEARCH_KINDS.has(v))) throw new Error('Unknown source kind');
    if (key === 'component_oids' && list.some(v => !/^[0-9a-z]{29}$/i.test(v))) throw new Error('component_oids must be 29-character ASCET OIDs');
    if (key === 'diagram_ids' && list.some(v => !/^[0-9a-z]{29}\/[0-9a-z]{29}$/i.test(v))) throw new Error('diagram_ids must pair Component and Diagram source OIDs');
    if (key === 'diagram_visibilities' && list.some(v => !['public', 'private'].includes(v))) throw new Error('diagram_visibilities must be public or private');
    result[key] = [...new Set(list)] as string[];
  }
  return result;
}

/** Exact, case-sensitive metadata matching; OR within a list, AND across fields. */
export function filterDocuments(documents: SourceDocument[], filters?: SearchFilters): SourceDocument[] {
  if (!filters) return documents;
  const tests = FILTER_KEYS.slice(0, FIELDS.length).flatMap((key, i) => filters[key] ? [{ field: FIELDS[i], values: new Set(filters[key]) }] : []);
  return documents.filter(doc => (!filters.diagram_ids || filters.diagram_ids.includes(doc.component_oid + '/' + diagramOID(doc))) &&
    (!filters.diagram_visibilities || (!!doc.visibility && filters.diagram_visibilities.includes(doc.visibility))) &&
    tests.every(t => t.values.has(doc[t.field]) || ((t.field === 'member_name' || t.field === 'member_id') && doc.diagram_methods?.some(m => t.values.has(t.field === 'member_id' ? m.member_id : m.name)))));
}

export function diagramOID(doc: Pick<SourceDocument, 'location' | 'graphical_location'>): string | undefined {
  return doc.graphical_location?.specification_source_oid ?? doc.location?.diagram_source_oid;
}
