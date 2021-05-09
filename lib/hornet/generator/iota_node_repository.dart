import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
    additionalProperties: AdditionalProperties(
        pubName: 'iota_hornet_node',
        pubAuthor: 'Marcel Pochert'
    ),
    inputSpecFile: 'lib/hornet/generator/iota_node.yaml',
    generatorName: Generator.dioNext,
    outputDirectory: 'lib/hornet/repository/hornet_node_api')
class IotaNodeGenerator extends OpenapiGeneratorConfig {}
