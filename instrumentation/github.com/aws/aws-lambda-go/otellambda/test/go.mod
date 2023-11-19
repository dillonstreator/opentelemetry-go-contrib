module github.com/dillonstreator/opentelemetry-go-contrib/instrumentation/github.com/aws/aws-lambda-go/otellambda/test

go 1.20

replace (
	github.com/dillonstreator/opentelemetry-go-contrib/detectors/aws/lambda => ../../../../../../detectors/aws/lambda
	github.com/dillonstreator/opentelemetry-go-contrib/instrumentation/github.com/aws/aws-lambda-go/otellambda => ../
	github.com/dillonstreator/opentelemetry-go-contrib/propagators/aws => ../../../../../../propagators/aws
)

require (
	github.com/aws/aws-lambda-go v1.41.0
	github.com/stretchr/testify v1.8.4
	github.com/dillonstreator/opentelemetry-go-contrib/detectors/aws/lambda v0.46.1
	github.com/dillonstreator/opentelemetry-go-contrib/instrumentation/github.com/aws/aws-lambda-go/otellambda v0.46.1
	github.com/dillonstreator/opentelemetry-go-contrib/propagators/aws v1.21.1
	go.opentelemetry.io/otel v1.21.0
	go.opentelemetry.io/otel/sdk v1.21.0
	go.opentelemetry.io/otel/trace v1.21.0
)

require (
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/go-logr/logr v1.3.0 // indirect
	github.com/go-logr/stdr v1.2.2 // indirect
	github.com/pmezard/go-difflib v1.0.0 // indirect
	go.opentelemetry.io/otel/metric v1.21.0 // indirect
	golang.org/x/sys v0.14.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)
