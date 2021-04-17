defmodule WorkloadReportsGeneratorTest do
  use ExUnit.Case
  # doctest WorkloadReportsGenerator

  describe "build/1" do
    test "builds the report" do
      filename = "gen_report_test.csv"

      response = WorkloadReportsGenerator.build(filename)

      expected_response = %{
        "all_hours" => %{
          "Cleiton" => 4,
          "Daniele" => 21,
          "Danilo" => 6,
          "Diego" => 7,
          "Giuliano" => 10,
          "Jakeliny" => 14,
          "Joseph" => 3,
          "Mayk" => 19,
          "Rafael" => 0,
          "Vinicius" => 0
        },
        "hours_per_month" => %{
          "Cleiton" => %{
            "Abril" => 0,
            "Agosto" => 0,
            "Dezembro" => 0,
            "Fevereiro" => 0,
            "Janeiro" => 0,
            "Julho" => 0,
            "Junho" => 4,
            "Maio" => 0,
            "Março" => 0,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 0
          },
          "Daniele" => %{
            "Abril" => 7,
            "Agosto" => 0,
            "Dezembro" => 5,
            "Fevereiro" => 0,
            "Janeiro" => 0,
            "Julho" => 0,
            "Junho" => 1,
            "Maio" => 8,
            "Março" => 0,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 0
          },
          "Danilo" => %{
            "Abril" => 0,
            "Agosto" => 0,
            "Dezembro" => 0,
            "Fevereiro" => 6,
            "Janeiro" => 0,
            "Julho" => 0,
            "Junho" => 0,
            "Maio" => 0,
            "Março" => 0,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 0
          },
          "Diego" => %{
            "Abril" => 0,
            "Agosto" => 4,
            "Dezembro" => 0,
            "Fevereiro" => 0,
            "Janeiro" => 0,
            "Julho" => 0,
            "Junho" => 0,
            "Maio" => 0,
            "Março" => 0,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 3
          },
          "Giuliano" => %{
            "Abril" => 1,
            "Agosto" => 0,
            "Dezembro" => 0,
            "Fevereiro" => 9,
            "Janeiro" => 0,
            "Julho" => 0,
            "Junho" => 0,
            "Maio" => 0,
            "Março" => 0,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 0
          },
          "Jakeliny" => %{
            "Abril" => 0,
            "Agosto" => 0,
            "Dezembro" => 0,
            "Fevereiro" => 0,
            "Janeiro" => 0,
            "Julho" => 8,
            "Junho" => 0,
            "Maio" => 0,
            "Março" => 6,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 0
          },
          "Joseph" => %{
            "Abril" => 0,
            "Agosto" => 0,
            "Dezembro" => 0,
            "Fevereiro" => 0,
            "Janeiro" => 0,
            "Julho" => 0,
            "Junho" => 0,
            "Maio" => 0,
            "Março" => 3,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 0
          },
          "Mayk" => %{
            "Abril" => 0,
            "Agosto" => 0,
            "Dezembro" => 5,
            "Fevereiro" => 0,
            "Janeiro" => 0,
            "Julho" => 7,
            "Junho" => 0,
            "Maio" => 0,
            "Março" => 0,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 7
          },
          "Rafael" => %{
            "Abril" => 0,
            "Agosto" => 0,
            "Dezembro" => 0,
            "Fevereiro" => 0,
            "Janeiro" => 0,
            "Julho" => 0,
            "Junho" => 0,
            "Maio" => 0,
            "Março" => 0,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 0
          },
          "Vinicius" => %{
            "Abril" => 0,
            "Agosto" => 0,
            "Dezembro" => 0,
            "Fevereiro" => 0,
            "Janeiro" => 0,
            "Julho" => 0,
            "Junho" => 0,
            "Maio" => 0,
            "Março" => 0,
            "Novembro" => 0,
            "Outubro" => 0,
            "Setembro" => 0
          }
        },
        "hours_per_year" => %{
          "Cleiton" => %{2016 => 3, 2017 => 0, 2018 => 0, 2019 => 0, 2020 => 1},
          "Daniele" => %{2016 => 10, 2017 => 3, 2018 => 7, 2019 => 0, 2020 => 1},
          "Danilo" => %{2016 => 0, 2017 => 0, 2018 => 0, 2019 => 6, 2020 => 0},
          "Diego" => %{2016 => 3, 2017 => 4, 2018 => 0, 2019 => 0, 2020 => 0},
          "Giuliano" => %{2016 => 0, 2017 => 3, 2018 => 0, 2019 => 6, 2020 => 1},
          "Jakeliny" => %{2016 => 0, 2017 => 8, 2018 => 0, 2019 => 6, 2020 => 0},
          "Joseph" => %{2016 => 0, 2017 => 3, 2018 => 0, 2019 => 0, 2020 => 0},
          "Mayk" => %{2016 => 7, 2017 => 8, 2018 => 0, 2019 => 4, 2020 => 0},
          "Rafael" => %{2016 => 0, 2017 => 0, 2018 => 0, 2019 => 0, 2020 => 0},
          "Vinicius" => %{2016 => 0, 2017 => 0, 2018 => 0, 2019 => 0, 2020 => 0}
        }
      }

      assert response == expected_response
    end
  end
end
